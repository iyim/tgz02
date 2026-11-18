.class Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;
.super Ljava/lang/Object;
.source "DinamicXEngineRouter.java"

# interfaces
.implements Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->downLoadTemplates(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DownloadResult;->finishedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplatesToV3(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DownloadResult;->failedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplatesToV3(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->postNotification(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
