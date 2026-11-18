.class public Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;
.super Ljava/lang/Object;
.source "AppSearchModel.java"


# instance fields
.field private jsonStr:Ljava/lang/String;

.field private searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;->jsonStr:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;->parseData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    return-object v0
.end method

.method public parseData(Ljava/lang/String;)V
    .locals 1

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;->jsonStr:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchModel;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    return-void
.end method
