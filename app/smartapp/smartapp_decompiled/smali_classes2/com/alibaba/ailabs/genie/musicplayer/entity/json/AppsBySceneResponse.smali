.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "AppsBySceneResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;
    }
.end annotation


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->model:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->model:Ljava/util/List;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;->statusCode:Ljava/lang/String;

    return-void
.end method
