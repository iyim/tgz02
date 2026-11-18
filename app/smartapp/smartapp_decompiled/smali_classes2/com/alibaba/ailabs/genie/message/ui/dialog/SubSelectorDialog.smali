.class public Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;
.super Landroid/app/Dialog;
.source "SubSelectorDialog.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SubSelectorDialog"


# instance fields
.field private buttonConfirm:Ljava/lang/String;

.field private confirmClickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private phoneSwitchChecked:Z

.field private soundSwitchChecked:Z

.field private subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/message/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    .line 50
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->buttonConfirm:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->phoneSwitchChecked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->phoneSwitchChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->updateSwitch(Ljava/lang/String;Landroid/widget/Switch;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->soundSwitchChecked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->soundSwitchChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setDefaultSwitch(Landroid/widget/Switch;Landroid/widget/Switch;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowAppPush(Ljava/lang/Boolean;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->setAllowVoicePush(Ljava/lang/Boolean;)V

    const-string v0, "phoneSwitch"

    .line 147
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->updateSwitch(Ljava/lang/String;Landroid/widget/Switch;)V

    const-string p1, "soundSwitch"

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->updateSwitch(Ljava/lang/String;Landroid/widget/Switch;)V

    return-void
.end method

.method private updateSwitch(Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$4;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Ljava/lang/String;Landroid/widget/Switch;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/alibaba/ailabs/genie/message/R$layout;->custom_dialog_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->setContentView(I)V

    .line 58
    sget p1, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_phone_push_linear:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_sound_push_linear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->custom_dialog_line_linear:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_custom_left_icon:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_custom_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    sget v4, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_custom_is_subscript:I

    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 64
    sget v5, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_custom_content:I

    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 65
    sget v6, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_custom_confirm:I

    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 66
    sget v7, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_phone_seek:I

    invoke-virtual {p0, v7}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    .line 67
    sget v8, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_sound_seek:I

    invoke-virtual {p0, v8}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    .line 69
    iget-object v9, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    if-eqz v9, :cond_6

    .line 70
    invoke-virtual {v9}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 71
    new-instance v9, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v9}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v10, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 73
    invoke-virtual {v9, v10}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v9

    sget v10, Lcom/alibaba/ailabs/genie/message/R$mipmap;->default_message_detail_icon:I

    .line 75
    invoke-virtual {v9, v10}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v9

    .line 77
    iget-object v10, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v9

    new-instance v10, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$1;

    invoke-direct {v10, p0, v2, v2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->buttonConfirm:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->buttonConfirm:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getStatus()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getAllowAppPush()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->phoneSwitchChecked:Z

    .line 110
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->phoneSwitchChecked:Z

    invoke-virtual {v7, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getAllowVoicePush()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->soundSwitchChecked:Z

    .line 113
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->soundSwitchChecked:Z

    invoke-virtual {v8, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;

    invoke-direct {p1, p0, v7}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Landroid/widget/Switch;)V

    invoke-virtual {v7, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;

    invoke-direct {p1, p0, v8}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog$3;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;Landroid/widget/Switch;)V

    invoke-virtual {v8, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getStatus()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 134
    invoke-direct {p0, v7, v8}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->setDefaultSwitch(Landroid/widget/Switch;Landroid/widget/Switch;)V

    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method
