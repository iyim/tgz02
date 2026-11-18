.class Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;
.super Ljava/lang/Object;
.source "DTemplateManager.java"

# interfaces
.implements Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/tempate/DTemplateManager;->downloadTemplates(Ljava/util/List;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

.field final synthetic val$callback:Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/tempate/DTemplateManager;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;->this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;->val$callback:Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;->val$callback:Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DinamicTemplateDownloaderCallback is null"

    .line 124
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "DTemplateManager"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->w(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-interface {v0, p1}, Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;->onDownloadFinish(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V

    return-void
.end method
