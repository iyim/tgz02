.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildModeBean"
.end annotation


# instance fields
.field private enable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;->enable:Ljava/lang/String;

    return-void
.end method
