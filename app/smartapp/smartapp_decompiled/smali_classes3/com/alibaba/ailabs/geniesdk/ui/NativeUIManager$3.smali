.class Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$3;
.super Ljava/lang/Thread;
.source "NativeUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onRecordStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$3;->this$0:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 252
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 254
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
