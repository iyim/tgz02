.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;
.super Ljava/lang/Object;
.source "CurrentListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidBean"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;->name:Ljava/lang/String;

    return-void
.end method
