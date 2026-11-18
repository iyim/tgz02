.class final Lcom/uc/sandboxExport/e;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/uc/sandboxExport/PreStartup$a;


# direct methods
.method constructor <init>(Lcom/uc/sandboxExport/PreStartup$a;Landroid/os/IBinder;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/uc/sandboxExport/e;->b:Lcom/uc/sandboxExport/PreStartup$a;

    iput-object p2, p0, Lcom/uc/sandboxExport/e;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/uc/sandboxExport/e;->b:Lcom/uc/sandboxExport/PreStartup$a;

    iget-object v1, p0, Lcom/uc/sandboxExport/e;->a:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/uc/sandboxExport/PreStartup$a;->a(Lcom/uc/sandboxExport/PreStartup$a;Landroid/os/IBinder;)V

    return-void
.end method
