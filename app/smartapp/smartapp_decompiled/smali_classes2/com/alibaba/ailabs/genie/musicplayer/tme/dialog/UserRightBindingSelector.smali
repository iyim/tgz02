.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;
.super Landroid/widget/LinearLayout;
.source "UserRightBindingSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;

.field private expireTime:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private originalName:Ljava/lang/String;

.field private radioButton:Landroid/widget/RadioButton;

.field private tag:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "QQ"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    const-string v0, "QQ\u97f3\u4e50"

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "QQ"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    const-string v0, "QQ\u97f3\u4e50"

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "QQ"

    .line 26
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    const-string p3, "QQ\u97f3\u4e50"

    .line 33
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->onCreateView()Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    .line 54
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->UserRightBindingSelector:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->UserRightBindingSelector_tag:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    .line 56
    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->UserRightBindingSelector_imgSrc:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 57
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->UserRightBindingSelector_title:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "default tag"

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    .line 63
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getOriginalName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setSelected(Z)V

    return-void
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_user_right_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channel_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->title:Landroid/widget/TextView;

    .line 77
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channel_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->expireTime:Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->imageView:Landroid/widget/ImageView;

    .line 79
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->radioButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->radioButton:Landroid/widget/RadioButton;

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->radioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method protected onSwitchSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;->onSelected(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->radioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setOnSelectListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->isSelected()Z

    move-result v0

    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-binding"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->onSwitchSelected(Z)V

    :cond_0
    return-void
.end method

.method public setVipExpireTime(Ljava/lang/String;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->expireTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6fc0\u6d3b \u5f53\u524d\u4f1a\u5458\u5230\u671f\n\u65e5\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateNickName(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u7684"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->originalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
