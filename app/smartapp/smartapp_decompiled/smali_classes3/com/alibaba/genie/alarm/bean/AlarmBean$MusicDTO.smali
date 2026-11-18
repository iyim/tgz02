.class public Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;
.super Ljava/lang/Object;
.source "AlarmBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/bean/AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicDTO"
.end annotation


# instance fields
.field private musicId:Ljava/lang/String;

.field private musicName:Ljava/lang/String;

.field private musicType:Ljava/lang/String;

.field private musicTypeName:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMusicId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicId:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicType()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicType:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicTypeName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicId:Ljava/lang/String;

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setMusicType(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicType:Ljava/lang/String;

    return-void
.end method

.method public setMusicTypeName(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->musicTypeName:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->source:Ljava/lang/String;

    return-void
.end method
