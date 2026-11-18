.class final Lcom/uc/sandboxExport/helper/d;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Landroid/os/StrictMode$ThreadPolicy;

.field private final b:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/uc/sandboxExport/helper/d;->a:Landroid/os/StrictMode$ThreadPolicy;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/uc/sandboxExport/helper/d;->b:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;B)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/uc/sandboxExport/helper/d;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method static a()Lcom/uc/sandboxExport/helper/d;
    .locals 3

    .line 24
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/uc/sandboxExport/helper/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/uc/sandboxExport/helper/d;-><init>(Landroid/os/StrictMode$ThreadPolicy;B)V

    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/uc/sandboxExport/helper/d;->a:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/uc/sandboxExport/helper/d;->b:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_1

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    return-void
.end method
