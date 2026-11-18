.class public Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;
.super Landroid/widget/LinearLayout;
.source "PasswordEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordEditText"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurIndex:I

.field private mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

.field private mIInputChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;

.field private mShakeAnimation:Landroid/view/animation/Animation;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->initEditView(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->initEditView(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->initEditView(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getChars()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 127
    :goto_0
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    if-ge v1, v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->getChar()C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEditView(Landroid/content/Context;)V
    .locals 5

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->passwd_editext:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->password_edit_3:I

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->password_edit_0:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    .line 72
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    new-array v0, v0, [Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 73
    :goto_0
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    if-ge v2, v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    sget v4, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->password_edit_0:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aput-object v4, v3, v2

    .line 75
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 81
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$anim;->shake:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mShakeAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public deleteChar()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->hasPassword()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    goto :goto_3

    .line 174
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    :goto_0
    if-ltz v0, :cond_2

    .line 175
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->hasPassword()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 181
    :goto_1
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    sub-int/2addr v3, v1

    :goto_2
    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    if-le v3, v4, :cond_4

    .line 182
    iget-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->hasPassword()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v1, v1, v0

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setChar(C)V

    .line 196
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    if-eq v1, v0, :cond_6

    .line 197
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v1, v2, v1

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 198
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    :cond_6
    return-void
.end method

.method public error()V
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->reset()V

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mShakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    const/4 v0, 0x0

    .line 212
    :goto_0
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mShakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getInputChangeListener()Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mIInputChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    instance-of v0, p1, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->getInputChangeListener()Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;->onInputChange(ZLandroid/view/View;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->updateDrawable()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNotifyKeyboardChanged(Z)V
    .locals 2

    const-string v0, "PasswordEditText"

    const-string v1, "onNotifyKeyboardChanged hideUI"

    .line 226
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->updateDrawable()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    :goto_0
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    if-ge v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 220
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v2, v2, v1

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setChar(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    return-void
.end method

.method public setChar(C)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setChar(C)V

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 143
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mSize:I

    if-ge p1, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->hasPassword()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 146
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    if-ge v0, p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->hasPassword()Z

    move-result p1

    if-nez p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setSelected(Z)V

    .line 154
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mCurIndex:I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->getChars()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->getInputChangeListener()Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;->onInputEnd(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setInputChangeListener(Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mIInputChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText$InputChangeListener;

    return-void
.end method

.method public updateDrawable()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PasswordEditText;->mEditText:[Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 204
    invoke-virtual {v3}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->updateDrawable()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
