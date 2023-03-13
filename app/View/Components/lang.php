<?php

namespace App\View\Components;

use Illuminate\View\Component;

class lang extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $classtip; 

    public function __construct($classtip)
    {
        $this->classtip = $classtip;    
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {

        return view('components.lang',[
            'classtip' => $this->classtip
        ]);
    }
}
