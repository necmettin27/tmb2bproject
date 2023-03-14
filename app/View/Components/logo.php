<?php

namespace App\View\Components;

use App\Models\Settings;
use Illuminate\View\Component;

class logo extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */  

    public function __construct()
    {
        
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {  
        $logo = Settings::select(['logo'])->first(); 
        return view('components.logo',[
            'logo' => $logo
        ]);
    }
}
