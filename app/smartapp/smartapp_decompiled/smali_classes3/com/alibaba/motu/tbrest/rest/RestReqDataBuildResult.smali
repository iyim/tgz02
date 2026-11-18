.class public Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;
.super Ljava/lang/Object;
.source "RestReqDataBuildResult.java"


# instance fields
.field mPostUrl:Ljava/lang/String;

.field postReqData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPostReqData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->postReqData:Ljava/util/Map;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->mPostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setPostReqData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->postReqData:Ljava/util/Map;

    return-void
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->mPostUrl:Ljava/lang/String;

    return-void
.end method
