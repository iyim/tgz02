.class public interface abstract Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;
.super Ljava/lang/Object;
.source "ITemplateProvider.java"


# virtual methods
.method public abstract checkTemplate(Lcom/taobao/android/ultron/common/model/IDMComponent;)Z
.end method

.method public abstract downloadTemplates(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;",
            "Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;",
            ")V"
        }
    .end annotation
.end method
