.class public Lcom/rich/czlylibary/bean/MiguRadioData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private radioId:Ljava/lang/String;

.field private radioName:Ljava/lang/String;

.field private radioPic:Ljava/lang/String;

.field private songIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getRadioId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioPic:Ljava/lang/String;

    return-object v0
.end method

.method public getSongIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->songIds:Ljava/util/List;

    return-object v0
.end method

.method public setRadioId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioId:Ljava/lang/String;

    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioName:Ljava/lang/String;

    return-void
.end method

.method public setRadioPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->radioPic:Ljava/lang/String;

    return-void
.end method

.method public setSongIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguRadioData;->songIds:Ljava/util/List;

    return-void
.end method
