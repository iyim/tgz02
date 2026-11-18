.class public Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;
.super Ljava/lang/Object;
.source "TemplateProviderManager.java"


# instance fields
.field private mTSMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->mTSMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    const-string p1, "dinamicx"

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;)V

    const-string p1, "dinamic"

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;)V

    return-void
.end method


# virtual methods
.method public checkTemplate(Ljava/lang/String;Lcom/taobao/android/ultron/common/model/IDMComponent;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->mTSMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1, p2}, Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;->checkTemplate(Lcom/taobao/android/ultron/common/model/IDMComponent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public downloadTemplates(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;",
            "Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;",
            ")V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->mTSMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;->downloadTemplates(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V

    :cond_0
    return-void
.end method

.method public getTemplateProvider(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->mTSMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    return-object p1
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->mTSMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
