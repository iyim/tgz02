.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;
.super Ljava/lang/Object;
.source "ViewEngine.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;)V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$1100(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$1100(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;->onFinished(Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 795
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;->failedTemplates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;->failedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;->failedTemplates:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method
