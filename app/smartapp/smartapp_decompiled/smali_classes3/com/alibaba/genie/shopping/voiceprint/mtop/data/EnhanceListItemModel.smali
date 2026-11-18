.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;
.super Ljava/lang/Object;
.source "EnhanceListItemModel.java"


# instance fields
.field private modifyTime:J

.field private position:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModifyTime()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->modifyTime:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->position:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setModifyTime(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->modifyTime:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->position:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;->url:Ljava/lang/String;

    return-void
.end method
