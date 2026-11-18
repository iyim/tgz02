.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicLightBean"
.end annotation


# instance fields
.field private lightstyle:Ljava/lang/String;

.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLightstyle()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;->lightstyle:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;->value:Z

    return v0
.end method

.method public setLightstyle(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;->lightstyle:Ljava/lang/String;

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;->value:Z

    return-void
.end method
