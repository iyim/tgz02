.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;
.super Ljava/lang/Object;
.source "ListSwitchItem.java"


# static fields
.field public static final EXPRESS_QUERY:Ljava/lang/String; = "express_query"

.field public static final MUSIC_RECOMMENDATION:Ljava/lang/String; = "music_recommendation"


# instance fields
.field private memberId:J

.field private status:Z

.field private switchType:Ljava/lang/String;

.field private userId:J


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
.method public getMemberId()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->memberId:J

    return-wide v0
.end method

.method public getSwitchType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->switchType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->userId:J

    return-wide v0
.end method

.method public isStatus()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->status:Z

    return v0
.end method

.method public setMemberId(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->memberId:J

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->status:Z

    return-void
.end method

.method public setSwitchType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->switchType:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListSwitchItem;->userId:J

    return-void
.end method
