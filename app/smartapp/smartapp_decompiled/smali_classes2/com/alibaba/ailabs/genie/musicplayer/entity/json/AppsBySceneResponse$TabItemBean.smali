.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;
.super Ljava/lang/Object;
.source "AppsBySceneResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabItemBean"
.end annotation


# instance fields
.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->src:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->isSelected:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->isSelected:Z

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->src:Ljava/lang/String;

    return-void
.end method
