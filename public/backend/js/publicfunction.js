$('#aciklama').characterCounter({
    minlength: 0,
    maxlength: 160,
    blockextra: true,
    position: 'bottom',
    counterclass: 'textkarakter',
    alertclass: 'out-of-range',
    textformat: '[used]/[max]',
});
$('#slug').slugger({
    source: '#baslik',
    prefix: '',
    suffix:'',
    readonly: false
});
