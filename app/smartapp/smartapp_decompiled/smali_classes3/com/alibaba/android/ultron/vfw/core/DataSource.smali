.class public Lcom/alibaba/android/ultron/vfw/core/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# instance fields
.field private dmContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

.field private mBodyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mStickyBottomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mStickyTopList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mHeaderList:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mBodyList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mFooterList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyTopList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyBottomList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mTemplateList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mHeaderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mBodyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mFooterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyTopList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyBottomList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBodyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mBodyList:Ljava/util/List;

    return-object v0
.end method

.method public getDmContext()Lcom/taobao/android/ultron/datamodel/imp/DMContext;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->dmContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    return-object v0
.end method

.method public getDynamicTemplateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mTemplateList:Ljava/util/List;

    return-object v0
.end method

.method public getFooterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mFooterList:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mHeaderList:Ljava/util/List;

    return-object v0
.end method

.method public getStickyBottomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyBottomList:Ljava/util/List;

    return-object v0
.end method

.method public getStickyTopList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyTopList:Ljava/util/List;

    return-object v0
.end method

.method public setBodyList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mBodyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mBodyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setDmContext(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->dmContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    return-void
.end method

.method public setDynamicTemplateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mTemplateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFooterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mFooterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mFooterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setHeaderList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mHeaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mHeaderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setStickyBottomList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyBottomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyBottomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setStickyTopList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyTopList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/DataSource;->mStickyTopList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
