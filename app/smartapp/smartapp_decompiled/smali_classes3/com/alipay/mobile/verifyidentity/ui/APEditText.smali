.class public Lcom/alipay/mobile/verifyidentity/ui/APEditText;
.super Landroid/widget/EditText;
.source "APEditText.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;
    }
.end annotation


# static fields
.field private static e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;


# instance fields
.field private a:Z

.field private b:I

.field private c:F

.field private d:Z

.field public listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a()V

    .line 41
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    .line 22
    iput p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    .line 24
    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 72
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getTextSize(FI)F

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 74
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 75
    invoke-super {p0, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a()V

    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;
    .locals 1

    .line 121
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;)V
    .locals 0

    .line 125
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->e:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    .line 113
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    if-gtz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-eqz p1, :cond_1

    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    .line 98
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020022

    if-ne p1, v0, :cond_1

    .line 131
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 132
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;->onPaste()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 137
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setEmojiSize(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->b:I

    return-void
.end method

.method public setPasteListener(Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->listener:Lcom/alipay/mobile/verifyidentity/ui/APEditText$OnPasteListener;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->c:F

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->a()V

    return-void
.end method
