.class public Lcom/rich/czlylibary/bean/QueryTagInfo;
.super Lcom/rich/czlylibary/bean/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/GroupInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryTagInfo;->groupInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getGroupInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/GroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryTagInfo;->groupInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGroupInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/GroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryTagInfo;->groupInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryTagInfo{groupInfos=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/QueryTagInfo;->groupInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
