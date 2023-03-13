<x-guest-layout>
    <x-jet-authentication-card>

        <x-slot name="logo">
            <x-logo></x-logo>
        </x-slot>
        <x-jet-validation-errors class="mb-4" />
        <x-lang classtip="text-center"></x-lang>
        <form method="POST" action="{{ route('register') }}">
            @csrf
            <input type="hidden" value="company" name="type">
            <div>
                <x-jet-label for="companyname" value="{{ __('register.companyname') }}" />
                <x-jet-input id="companyname" class="block mt-1 w-full" type="text" name="companyname" :value="old('companyname')" required autofocus autocomplete="{{ __('register.companyname') }}" />
            </div>

            <div class="mt-4">
                <x-jet-label for="name" value="{{ __('register.name') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

            <div class="mt-4">
                <x-jet-label for="country" value="{{ __('register.country') }}" />
                <select class="form-select block w-full mt-1" name="country">
                    <option value=""> {{ __('register.choose') }}</option>
                    @foreach ( \App\Models\Ulkeler::orderBy('name','ASC')->get() as $ulke )
                        <option value="{{ $ulke->id }}">@if(app()->isLocale('tr'))
                                 {{ $ulke->name }}
                            @else
                                 {{ $ulke->name_en }}
                            @endif</option>
                    @endforeach
                </select>
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('register.email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="phone" value="{{ __('register.phone') }}" />
                <x-jet-input id="phone" class="block mt-1 w-full" type="text" name="phone" :value="old('phone')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="website" value="{{ __('register.website') }}" />
                <x-jet-input id="website" class="block mt-1 w-full" type="text" name="website" :value="old('website')" />
            </div>

            <div class="mt-4">
                <x-jet-label for="sector" value="{{ __('register.sector') }}" />
                <select class="form-select block w-full mt-1" name="sector" required>
                    <option value=""> {{ __('register.choose') }}</option>
                    @foreach ( \App\Models\Sektorler::orderBy('title_tr','ASC')->get() as $sektor )
                        <option value="{{ $sektor->id }}">
                            @if(app()->getLocale() == "tr")
                            {{ $sektor->title_tr }}
                            @else
                            {{ $sektor->title_en }}
                            @endif
                           
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="mt-4">
                <x-jet-label for="sector" value="{{ __('translate.profil') }}" />
                <select class="form-select block w-full mt-1" name="company_profile" required>
                    <option value=""> {{ __('translate.choose') }}</option>
                    @foreach ( \App\Models\CompanyProfil::orderBy('title_tr','ASC')->get() as $sektor )
                        <option value="{{ $sektor->id }}">
                            @if(app()->getLocale() == "tr")
                            {{ $sektor->title_tr }}
                            @else
                            {{ $sektor->title_en }}
                            @endif
                           
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="mt-4">
                <x-jet-label for="productandservices" value="{{ __('translate.hedefurun') }}" />
                <textarea class="w-full border rounded-lg text-gray-700 focus:outline-none focus:border-green-500" id="productandservices" name="productandservices"></textarea>
            </div>

            <div class="mt-4">
                <x-jet-label for="companydesciption" value="{{ __('register.companydesciption') }}" />
                <textarea class="w-full border rounded-lg text-gray-700 focus:outline-none focus:border-green-500" id="companydesciption" name="companydesciption"></textarea>
            </div>
            <div class="mt-4">
                <x-jet-label for="sector" value="{{ __('register.randevuonay') }}" />
                <select class="form-select block w-full mt-1" name="randevuonay" required>
                    <option value=""> {{ __('register.choose') }}</option>
                    <option value="1">@lang('translate.otomatikonaylansin')</option>
                    <option value="2">@lang('translate.onayimasunulsun')</option>
                  
                </select>
            </div>
            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('register.password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('register.password_confirm') }}" />
                <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>

            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                     {{ __('translate.girissayfasinagit') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('translate.kayitol') }}
                </x-jet-button>
            </div>
        </form>
     
    </x-jet-authentication-card>
</x-guest-layout>
