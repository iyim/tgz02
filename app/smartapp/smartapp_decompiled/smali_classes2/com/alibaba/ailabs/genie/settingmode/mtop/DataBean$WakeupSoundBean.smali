.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupSoundBean"
.end annotation


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isValue()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;->value:Z

    return-void
.end method
