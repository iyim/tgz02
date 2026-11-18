.class final Lcom/uc/webview/export/internal/SDKFactory$b;
.super Landroid/os/Handler;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/SDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private static final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 848
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 849
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 850
    new-instance v0, Lcom/uc/webview/export/internal/c;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/c;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->c:Ljava/lang/Runnable;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 868
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .line 847
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory$b;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 847
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 888
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance p0, Lcom/uc/webview/export/internal/SDKFactory$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/SDKFactory$b;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$b;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/SDKFactory$b;->post(Ljava/lang/Runnable;)Z

    .line 892
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->p()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 893
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory$b;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez p0, :cond_1

    .line 894
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory$b;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 896
    :cond_1
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory$b;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez p0, :cond_2

    goto :goto_0

    .line 897
    :cond_2
    throw p0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 873
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    if-eqz v0, :cond_1

    .line 876
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/uc/webview/export/extension/NotAvailableUCListener;->onNotAvailableUC(I)V

    const/4 p1, 0x0

    .line 878
    sput-object p1, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    :cond_1
    :goto_0
    return-void
.end method
