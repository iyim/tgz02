.class public Lcom/taobao/tao/util/SystemBarDecorator;
.super Ljava/lang/Object;
.source "SystemBarDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;
    }
.end annotation


# static fields
.field private static final ENABLE_KEY:Ljava/lang/String; = "immersive_status_enable"

.field private static final GROUP_NAME:Ljava/lang/String; = "message_box_switch"

.field private static final MASK_COLOR:I = 0x30000000

.field private static final TAG:Ljava/lang/String; = "SystemBarDecorator"

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mStatusBarAvailable:Z

.field private mStatusBarTintView:Landroid/view/View;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 43
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 44
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/tao/util/SystemBarDecorator;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    sput-object v0, Lcom/taobao/tao/util/SystemBarDecorator;->sNavBarOverride:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mNavBarAvailable:Z

    .line 74
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    const/4 p1, 0x2

    .line 76
    iput p1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mType:I

    goto :goto_0

    .line 77
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iput v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mType:I

    .line 82
    iput-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/taobao/tao/util/SystemBarDecorator;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "status_bar_height"

    .line 529
    invoke-static {p0, v0}, Lcom/taobao/tao/util/SystemBarDecorator;->getSystemComponentDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSystemComponentDimen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 536
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 538
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 214
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarTintView:Landroid/view/View;

    .line 215
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/tao/util/SystemBarDecorator;->getConfig()Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 216
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/tao/util/SystemBarDecorator;->getConfig()Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/taobao/tao/util/SystemBarDecorator;->getConfig()Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object p1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, 0x30000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    iget-object p1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public enableFitsWindowsOnRoot(Z)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableImmersiveStatus(Ljava/lang/String;Z)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/tao/util/SystemBarDecorator;->enableImmersiveStatus(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public enableImmersiveStatus(Ljava/lang/String;ZZ)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 142
    iget v2, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 157
    iput-boolean v1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    return v1

    .line 150
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0xc000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 151
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    if-eqz p3, :cond_4

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x400

    invoke-virtual {p3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/high16 v1, 0x4000000

    invoke-virtual {p3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p3}, Lcom/taobao/tao/util/SystemBarDecorator;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 159
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/util/SystemBarDecorator;->setStatusBarColor(Ljava/lang/String;Z)V

    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method public enableImmersiveStatus(Z)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0, v0, v1, p1}, Lcom/taobao/tao/util/SystemBarDecorator;->enableImmersiveStatus(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public enableImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Lcom/taobao/tao/util/SystemBarDecorator;->enableImmersiveStatusBar(Z)Z

    move-result v0

    return v0
.end method

.method public enableImmersiveStatusBar(Z)Z
    .locals 5

    .line 477
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 483
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 484
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_1

    const/high16 v3, 0xc000000

    .line 487
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 489
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x2500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 492
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    const v3, 0xc002000

    .line 495
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 497
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 500
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 504
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_1

    .line 506
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    const/high16 v1, 0x4000000

    .line 508
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 512
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/tao/util/TBStatusBarUtils;->isMIUIDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/taobao/tao/util/TBStatusBarUtils;->miuiSetStatusBarLightMode(Landroid/app/Activity;Z)Z

    goto :goto_2

    .line 514
    :cond_4
    invoke-static {}, Lcom/taobao/tao/util/TBStatusBarUtils;->isMeizuDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 515
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/taobao/tao/util/TBStatusBarUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_3
    return v1
.end method

.method public getConfig()Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mConfig:Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    if-nez v0, :cond_1

    new-instance v0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    iget-object v1, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    iget-boolean v3, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mNavBarAvailable:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mConfig:Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mConfig:Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mType:I

    return v0
.end method

.method public isStatusBarAvailable()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    return v0
.end method

.method public setStatusBarColor(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 175
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz p2, :cond_2

    const/high16 p2, 0x30000000

    .line 183
    invoke-static {p2, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    .line 185
    :cond_2
    iget p2, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mType:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object p2, p0, Lcom/taobao/tao/util/SystemBarDecorator;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setStatusBarColor(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/taobao/tao/util/SystemBarDecorator;->setStatusBarColor(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStatusBarColor(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "#ffffff"

    .line 170
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 172
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/taobao/tao/util/SystemBarDecorator;->setStatusBarColor(IZ)V

    return-void
.end method
