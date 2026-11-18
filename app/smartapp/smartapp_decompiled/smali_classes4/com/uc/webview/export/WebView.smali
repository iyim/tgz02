.class public Lcom/uc/webview/export/WebView;
.super Landroid/widget/FrameLayout;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/WebView$b;,
        Lcom/uc/webview/export/WebView$FindListener;,
        Lcom/uc/webview/export/WebView$HitTestResult;,
        Lcom/uc/webview/export/WebView$WebViewTransport;,
        Lcom/uc/webview/export/WebView$a;,
        Lcom/uc/webview/export/WebView$WebViewCountting;
    }
.end annotation


# static fields
.field public static final CORE_TYPE_ANDROID:I = 0x2

.field public static final CORE_TYPE_U3:I = 0x1

.field public static final CORE_TYPE_U4:I = 0x3

.field public static final CREATE_FLAG_FORCE_USING_SYSTEM:I = 0x2

.field public static final CREATE_FLAG_QUICK:I = 0x1

.field public static final DEFAULT_CORE_TYPE:I = 0x1

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static m:Z

.field protected static sInstanceCount:[I


# instance fields
.field private a:Lcom/uc/webview/export/WebSettings;

.field private b:Lcom/uc/webview/export/internal/a;

.field private c:Lcom/uc/webview/export/extension/CommonExtension;

.field private d:Lcom/uc/webview/export/extension/UCExtension;

.field private e:Z

.field private f:Lcom/uc/webview/export/WebView$a;

.field private g:I

.field private h:Lcom/uc/webview/export/WebView$WebViewCountting;

.field private i:Z

.field protected mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

.field private n:Ljava/lang/RuntimeException;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 105
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/WebView;->sInstanceCount:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uc/webview/export/WebView;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uc/webview/export/WebView;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uc/webview/export/WebView;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 114
    sput-boolean v0, Lcom/uc/webview/export/WebView;->m:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    const v3, 0x1010085

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 372
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const v3, 0x1010085

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 410
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 435
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 95
    iput-object p3, p0, Lcom/uc/webview/export/WebView;->a:Lcom/uc/webview/export/WebSettings;

    .line 96
    iput-object p3, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    const/4 p5, 0x1

    .line 100
    iput-boolean p5, p0, Lcom/uc/webview/export/WebView;->e:Z

    .line 103
    new-instance v0, Lcom/uc/webview/export/WebView$WebViewCountting;

    invoke-direct {v0}, Lcom/uc/webview/export/WebView$WebViewCountting;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/WebView;->h:Lcom/uc/webview/export/WebView$WebViewCountting;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/uc/webview/export/WebView;->i:Z

    .line 117
    iput-object p3, p0, Lcom/uc/webview/export/WebView;->n:Ljava/lang/RuntimeException;

    .line 2130
    iput-boolean v0, p0, Lcom/uc/webview/export/WebView;->o:Z

    if-eqz p1, :cond_7

    .line 458
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/WebView;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ucstartup"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "new export WebView start"

    .line 459
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x20e

    .line 460
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 469
    :cond_0
    new-instance v1, Lcom/uc/webview/export/WebView$a;

    invoke-direct {v1, p1, p0}, Lcom/uc/webview/export/WebView$a;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V

    iput-object v1, p0, Lcom/uc/webview/export/WebView;->f:Lcom/uc/webview/export/WebView$a;

    .line 471
    new-array v1, p5, [I

    .line 472
    iget-object v3, p0, Lcom/uc/webview/export/WebView;->f:Lcom/uc/webview/export/WebView$a;

    invoke-static {v3, p2, p0, p4, v1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object p4

    iput-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 474
    iget-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p4, p0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOverrideObject(Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;)V

    .line 475
    aget p4, v1, v0

    iput p4, p0, Lcom/uc/webview/export/WebView;->g:I

    .line 477
    sget-object p4, Lcom/uc/webview/export/WebView;->sInstanceCount:[I

    iget v1, p0, Lcom/uc/webview/export/WebView;->g:I

    aget v3, p4, v1

    add-int/2addr v3, p5

    aput v3, p4, v1

    .line 478
    iget p4, p0, Lcom/uc/webview/export/WebView;->g:I

    iget-object p5, p0, Lcom/uc/webview/export/WebView;->f:Lcom/uc/webview/export/WebView$a;

    .line 480
    invoke-virtual {p5}, Lcom/uc/webview/export/WebView$a;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    .line 479
    invoke-static {p4, p5}, Lcom/uc/webview/export/internal/SDKFactory;->a(ILandroid/content/Context;)Lcom/uc/webview/export/internal/a;

    move-result-object p4

    iput-object p4, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    .line 481
    iget-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p4}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getSettingsInner()Lcom/uc/webview/export/WebSettings;

    move-result-object p4

    iput-object p4, p0, Lcom/uc/webview/export/WebView;->a:Lcom/uc/webview/export/WebSettings;

    .line 483
    iget-object p4, p0, Lcom/uc/webview/export/WebView;->a:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p4, v0}, Lcom/uc/webview/export/WebSettings;->setMixedContentMode(I)V

    if-nez p2, :cond_1

    .line 486
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p2, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 488
    iget-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p4}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Lcom/uc/webview/export/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->l()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 492
    iget-object p2, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/uc/webview/export/WebView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0, p2}, Lcom/uc/webview/export/WebView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 495
    iget-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p4}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Lcom/uc/webview/export/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    :goto_0
    new-instance p2, Lcom/uc/webview/export/extension/CommonExtension;

    iget-object p4, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-direct {p2, p4}, Lcom/uc/webview/export/extension/CommonExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    iput-object p2, p0, Lcom/uc/webview/export/WebView;->c:Lcom/uc/webview/export/extension/CommonExtension;

    .line 500
    iget-object p2, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    iget p4, p0, Lcom/uc/webview/export/WebView;->g:I

    invoke-static {p1, p2, p4}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/interfaces/IWebView;I)Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/WebView;->d:Lcom/uc/webview/export/extension/UCExtension;

    .line 503
    sget-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez p1, :cond_3

    .line 504
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/WebView;->setWillNotDraw(Z)V

    .line 506
    :cond_3
    iget p1, p0, Lcom/uc/webview/export/WebView;->g:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    instance-of p1, p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    if-eqz p1, :cond_4

    .line 507
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/16 p4, 0x9

    invoke-interface {p1, p4, p3}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_4
    sget-boolean p1, Lcom/uc/webview/export/WebView;->m:Z

    if-eqz p1, :cond_5

    .line 510
    sput-boolean v0, Lcom/uc/webview/export/WebView;->m:Z

    const/16 p1, 0x20f

    .line 511
    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const-string p1, "new export WebView finish"

    .line 512
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :cond_5
    sget-object p1, Lcom/uc/webview/export/WebView;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 527
    iget p1, p0, Lcom/uc/webview/export/WebView;->g:I

    if-ne p1, p2, :cond_6

    .line 528
    sget-object p1, Lcom/uc/webview/export/WebView;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 530
    :cond_6
    sget-object p1, Lcom/uc/webview/export/WebView;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 532
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/WebView;->e()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 455
    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    :goto_2
    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const v3, 0x1010085

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 400
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    .line 422
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    const v3, 0x1010085

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 381
    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZB)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 61
    sget-object v0, Lcom/uc/webview/export/WebView;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/WebView;Landroid/content/Context;)V
    .locals 2

    .line 4147
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4148
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4149
    iget-object p0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {p0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    move-result-object p0

    const/16 p1, 0x19

    invoke-interface {p0, p1, v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static asyncNew(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/uc/webview/export/WebView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "TT;",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 2417
    new-instance v0, Lcom/uc/webview/export/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/e;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 61
    sget-object v0, Lcom/uc/webview/export/WebView;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 61
    sget-object v0, Lcom/uc/webview/export/WebView;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->n:Ljava/lang/RuntimeException;

    const-string v1, "WebView had destroyed,forbid it\'s interfaces to be called."

    if-eqz v0, :cond_0

    .line 698
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static e()V
    .locals 1

    .line 761
    new-instance v0, Lcom/uc/webview/export/a;

    invoke-direct {v0}, Lcom/uc/webview/export/a;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableSlowWholeDocumentDraw()V
    .locals 0

    .line 847
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->m()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private f()V
    .locals 2

    .line 2133
    iget-boolean v0, p0, Lcom/uc/webview/export/WebView;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 2134
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "add or remove view in export.WebView.draw"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-void
.end method

.method public static getCoreType()I
    .locals 1

    .line 1997
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    return v0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 2

    .line 1871
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1874
    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1876
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    const/16 v0, 0x64

    .line 1880
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 582
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 2234
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2235
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2216
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    .line 2245
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2246
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2225
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2206
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2207
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public canGoBack()Z
    .locals 1

    .line 592
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 593
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 603
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 604
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 614
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 615
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1958
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1959
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 627
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 643
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 644
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 653
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 654
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    .line 664
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 665
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->clearMatches()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 675
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 676
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->clearSslPreferences()V

    return-void
.end method

.method public final computeScroll()V
    .locals 0

    .line 2041
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 691
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->copyBackForwardListInner()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public coreComputeScroll()V
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2050
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superComputeScroll()V

    :cond_0
    return-void
.end method

.method public coreDestroy()V
    .locals 1

    .line 2291
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2292
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superDestroy()V

    :cond_0
    return-void
.end method

.method public coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2122
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public coreDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2282
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public coreOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2068
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public coreOnInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2374
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2375
    const-class v0, Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2376
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2377
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public coreOnInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2362
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2363
    const-class v0, Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2364
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2365
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    invoke-interface {p1, v0, v1}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public coreOnScrollChanged(IIII)V
    .locals 1

    .line 2111
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2112
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superOnScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method public coreOnVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2094
    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superOnVisibilityChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public coreOverScrollBy(IIIIIIIIZ)Z
    .locals 11

    move-object v0, p0

    .line 2348
    iget-object v1, v0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 2349
    invoke-interface/range {v1 .. v10}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superOverScrollBy(IIIIIIIIZ)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public corePerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 2386
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2387
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2388
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2389
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public coreRequestLayout()V
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2325
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superRequestLayout()V

    :cond_0
    return-void
.end method

.method public coreSetVisibility(I)V
    .locals 1

    .line 2306
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2307
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->superSetVisibility(I)V

    :cond_0
    return-void
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1978
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return-object v1

    .line 1980
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1982
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    instance-of v2, v0, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1983
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1984
    check-cast v0, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/16 p1, 0xb

    invoke-interface {v0, p1, v1}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintDocumentAdapter;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public createWebMessageChannel()[Lcom/uc/webview/export/WebMessagePort;
    .locals 2

    .line 1501
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1502
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->createWebMessageChannelInner()Ljava/lang/Object;

    move-result-object v0

    .line 1503
    instance-of v1, v0, [Lcom/uc/webview/export/WebMessagePort;

    if-eqz v1, :cond_0

    .line 1504
    nop

    nop

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 6

    .line 721
    monitor-enter p0

    .line 722
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/webview/export/WebView;->i:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/uc/webview/export/WebView;->i:Z

    const/4 v1, 0x0

    .line 726
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->h:Lcom/uc/webview/export/WebView$WebViewCountting;

    .line 727
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->isAttachedToWindow()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 732
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This is the stack of destroying WebView, isAttachedToWindow:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/uc/webview/export/WebView;->n:Ljava/lang/RuntimeException;

    .line 736
    iget-object v2, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->destroy()V

    .line 738
    iget v2, p0, Lcom/uc/webview/export/WebView;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 739
    sget-object v2, Lcom/uc/webview/export/WebView;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 741
    :cond_1
    sget-object v2, Lcom/uc/webview/export/WebView;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 744
    :goto_1
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 745
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->a:Lcom/uc/webview/export/WebSettings;

    .line 746
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    .line 747
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->c:Lcom/uc/webview/export/extension/CommonExtension;

    .line 748
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->d:Lcom/uc/webview/export/extension/UCExtension;

    .line 750
    iget-object v2, p0, Lcom/uc/webview/export/WebView;->f:Lcom/uc/webview/export/WebView$a;

    if-eqz v2, :cond_4

    .line 3169
    invoke-virtual {v2}, Lcom/uc/webview/export/WebView$a;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3172
    :try_start_1
    const-class v4, Landroid/content/ContextWrapper;

    const-string v5, "mBase"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3174
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3175
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3180
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3178
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 3183
    :cond_2
    :goto_2
    iget-object v0, v2, Lcom/uc/webview/export/WebView$a;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_3

    .line 3184
    iput-object v1, v2, Lcom/uc/webview/export/WebView$a;->a:Lcom/uc/webview/export/WebView;

    .line 752
    :cond_3
    iput-object v1, p0, Lcom/uc/webview/export/WebView;->f:Lcom/uc/webview/export/WebView$a;

    .line 756
    :cond_4
    sget-object v0, Lcom/uc/webview/export/WebView;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 757
    invoke-static {}, Lcom/uc/webview/export/WebView;->e()V

    return-void

    .line 723
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "destroy() already called."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 727
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1301
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1302
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1266
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .line 782
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 783
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2256
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->isDestroied()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2260
    :try_start_0
    iput-boolean v0, p0, Lcom/uc/webview/export/WebView;->o:Z

    .line 2262
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2264
    iput-boolean v1, p0, Lcom/uc/webview/export/WebView;->o:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2269
    iput-boolean v1, p0, Lcom/uc/webview/export/WebView;->o:Z

    const-string v0, "WebView"

    const-string v1, "Exception happens in Webview.draw"

    .line 2270
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2271
    throw p1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1916
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1917
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 796
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 797
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .line 812
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 813
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .line 856
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 857
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->flingScroll(II)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2396
    const-class v0, Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 868
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 869
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getCommonExtension()Lcom/uc/webview/export/extension/CommonExtension;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->c:Lcom/uc/webview/export/extension/CommonExtension;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 879
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 880
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCoreView()Landroid/view/View;
    .locals 1

    .line 2017
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 2018
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViewCoreType()I
    .locals 1

    .line 2007
    iget v0, p0, Lcom/uc/webview/export/WebView;->g:I

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 891
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 892
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;
    .locals 3

    .line 916
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 917
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getHitTestResultInner()Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    new-instance v0, Lcom/uc/webview/export/WebView$HitTestResult;

    iget-object v1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getHitTestResultInner()Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/uc/webview/export/WebView$HitTestResult;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 937
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 938
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 952
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 953
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 963
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 964
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 978
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 979
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/uc/webview/export/WebSettings;
    .locals 1

    .line 1535
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1536
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->a:Lcom/uc/webview/export/WebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 990
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 991
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUCExtension()Lcom/uc/webview/export/extension/UCExtension;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->d:Lcom/uc/webview/export/extension/UCExtension;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1003
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1004
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 1013
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1014
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 1026
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1027
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 1036
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1037
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 1048
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1049
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->invokeZoomPicker()V

    return-void
.end method

.method public isDestroied()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/uc/webview/export/WebView;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .line 1328
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1329
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 3

    .line 2028
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 1310
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1311
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1085
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1086
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1122
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1123
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1138
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1139
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1159
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1160
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1899
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1900
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    if-eqz v1, :cond_0

    .line 1901
    invoke-static {v0}, Lcom/uc/webview/export/internal/a;->a(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2059
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 2075
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1923
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1924
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    if-eqz v1, :cond_0

    .line 1925
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/a;->b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 1250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v1, 0x2002

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1175
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1176
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1185
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1186
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->onResume()V

    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 2103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1941
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1942
    iget-object p3, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    if-eqz p3, :cond_0

    .line 1943
    invoke-virtual {p3, p1, p2}, Lcom/uc/webview/export/internal/a;->a(II)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 2085
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 1932
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 1933
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/WebView;->b:Lcom/uc/webview/export/internal/a;

    if-eqz v1, :cond_0

    .line 1934
    invoke-virtual {v1, v0, p1}, Lcom/uc/webview/export/internal/a;->a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V

    :cond_0
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 2336
    invoke-super/range {p0 .. p9}, Landroid/widget/FrameLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 1349
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1350
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->pageDown(Z)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 1361
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1362
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->pageUp(Z)Z

    move-result p1

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 1442
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1443
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->pauseTimers()V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 1457
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1458
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public postVisualStateCallback(JLcom/uc/webview/export/WebView$b;)V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/IWebView;->postVisualStateCallback(JLcom/uc/webview/export/WebView$b;)V

    return-void
.end method

.method public postWebMessage(Lcom/uc/webview/export/WebMessage;Landroid/net/Uri;)V
    .locals 1

    .line 1522
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1523
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->postWebMessageInner(Lcom/uc/webview/export/WebMessage;Landroid/net/Uri;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 1467
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1468
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->reload()V

    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .line 2143
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2144
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeAllViewsInLayout()V
    .locals 0

    .line 2152
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2153
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .line 1480
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1482
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 2161
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 2170
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 2179
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeViews(II)V
    .locals 0

    .line 2188
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2189
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 2197
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->f()V

    .line 2198
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .line 1553
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1554
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .line 1566
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1567
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public final requestLayout()V
    .locals 0

    .line 2316
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 1

    .line 1584
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1585
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->restoreStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public resumeTimers()V
    .locals 1

    .line 1595
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1596
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->resumeTimers()V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 1

    .line 1612
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1613
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->saveStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .line 1752
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1753
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1770
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1771
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/IWebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1621
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1622
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 1623
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
    .locals 1

    .line 1636
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1637
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    return-void
.end method

.method public setFindListener(Lcom/uc/webview/export/WebView$FindListener;)V
    .locals 1

    .line 823
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 824
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setFindListener(Lcom/uc/webview/export/WebView$FindListener;)V

    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .line 1337
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1338
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1654
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1655
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .line 1678
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1679
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setInitialScale(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1726
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1727
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 1728
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 1691
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1692
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2

    .line 1274
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    if-eqz p1, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    new-instance v1, Lcom/uc/webview/export/d;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/d;-><init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnKeyListener;)V

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    .line 1292
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 1194
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    if-eqz p1, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    new-instance v1, Lcom/uc/webview/export/b;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/b;-><init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 1211
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 1220
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    if-eqz p1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    new-instance v1, Lcom/uc/webview/export/c;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/c;-><init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnTouchListener;)V

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 1237
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setOverScrollMode(I)V
    .locals 2

    .line 1709
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    if-eqz v0, :cond_0

    .line 1891
    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setScrollBarStyle(I)V

    .line 1893
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScrollBarStyle(I)V

    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 1319
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1320
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .line 1741
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1742
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setVerticalScrollbarOverlay(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    .line 2298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 1

    .line 1857
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1858
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 1

    .line 1844
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1845
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 1780
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1781
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->stopLoading()V

    return-void
.end method

.method public zoomBy(F)V
    .locals 6

    .line 1814
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 1820
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 1821
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1823
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    const-string v1, "zoomBy"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1825
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    .line 1823
    invoke-static {v0, v1, v4, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1827
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 1831
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v2

    .line 1832
    iget-object p1, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    check-cast p1, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/4 v1, 0x7

    invoke-interface {p1, v1, v0}, Lcom/uc/webview/export/internal/interfaces/InvokeObject;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 1818
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomFactor must be less than 100."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1816
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomFactor must be greater than 0.01."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zoomIn()Z
    .locals 1

    .line 1791
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1792
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 1802
    invoke-direct {p0}, Lcom/uc/webview/export/WebView;->d()V

    .line 1803
    iget-object v0, p0, Lcom/uc/webview/export/WebView;->mWebView:Lcom/uc/webview/export/internal/interfaces/IWebView;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->zoomOut()Z

    move-result v0

    return v0
.end method
