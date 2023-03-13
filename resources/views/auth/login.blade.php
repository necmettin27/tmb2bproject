<x-guest-layout>
    <x-slot name="header">
        @lang('translate.girisyap')
    </x-slot>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-logo></x-logo>
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            <x-lang classtip="text-center"></x-lang>
            @csrf
            <div>
                <x-jet-label for="email" value="{{ __('translate.email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('translate.parola') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('translate.hatirlabeni') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm float-left text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                        {{ __('translate.sifremiunuttum') }}
                    </a>
                @endif
                <a style="margin-left: 10px;" class="underline text-sm float-left text-gray-600 hover:text-gray-900" href="/register">
                    {{ __('translate.uyeol') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('translate.girisyap') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
