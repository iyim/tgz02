.class public Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;
.super Ljava/lang/Object;
.source "ItemBean.java"


# instance fields
.field public authorNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public extra:Ljava/util/Map;

.field private hasExposed:Z

.field public id:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->hasExposed:Z

    return-void
.end method


# virtual methods
.method public getAuthorNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->authorNames:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasExposed()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->hasExposed:Z

    return v0
.end method

.method public setHasExposed(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->hasExposed:Z

    return-void
.end method
