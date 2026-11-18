.class public Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;
.super Landroid/app/Dialog;
.source "ScreenDistanceTipDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenDistanceTipActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTipAnimIV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 33
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$style;->dialog_bottom_full:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/16 v0, 0x50

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 43
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result p1

    .line 48
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->child_mode_screen_distance_tip_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->setContentView(I)V

    const-string v0, "ScreenDistanceTipActivity"

    const-string v1, "ScreenDistanceTipDialog init"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_anim:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 9

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenDistanceTipDialog onWindowFocusChanged hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTipAnimIV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDistanceTipActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const-string p1, "GenieApi.playTTS : \u79bb\u5c4f\u5e55\u8fdc\u4e00\u4e9b\uff0c\u4fdd\u62a4\u597d\u773c\u775b\u54e6 "

    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "\u79bb\u5c4f\u5e55\u8fdc\u4e00\u4e9b\uff0c\u4fdd\u62a4\u597d\u773c\u775b\u54e6"

    invoke-static/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 70
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "AILABS_S3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->distance_tips_for_10:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 73
    :cond_0
    new-instance p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distance_tips_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    .line 78
    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->mTipAnimIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    :goto_1
    return-void
.end method
