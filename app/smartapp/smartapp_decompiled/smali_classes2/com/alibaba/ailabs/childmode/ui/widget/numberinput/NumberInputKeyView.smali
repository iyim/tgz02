.class public Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;
.super Landroid/widget/GridLayout;
.source "NumberInputKeyView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberInputKeyView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNumberInputListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$layout;->number_input_key_view_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0x8

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0x9

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xa

    .line 61
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xb

    .line 66
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 67
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xc

    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xd

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 77
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xe

    .line 81
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 82
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_8:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0xf

    .line 86
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_9:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0x10

    .line 91
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 92
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_0:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/4 v1, 0x7

    .line 96
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_enter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0x42

    .line 101
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 102
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$id;->number_input_key_button_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    const/16 v1, 0x43

    .line 106
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setKeyCode(I)V

    .line 107
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getNumberInputListener()Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mNumberInputListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 113
    instance-of v0, p1, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;

    if-eqz v0, :cond_2

    .line 114
    nop

    nop

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, -0xb5a588

    .line 121
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setTextColor(I)V

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->getKeyCode()I

    move-result p1

    .line 123
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mNumberInputListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;

    if-eqz p2, :cond_2

    .line 124
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;->onInputKey(I)Z

    goto :goto_0

    :cond_1
    const p2, 0x7f4a5a78

    .line 118
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputButton;->setTextColor(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNumberInputListener(Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/NumberInputKeyView;->mNumberInputListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberinput/INumberInputListener;

    return-void
.end method
