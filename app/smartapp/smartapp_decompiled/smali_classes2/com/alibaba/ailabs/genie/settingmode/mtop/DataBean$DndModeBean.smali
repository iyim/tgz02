.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DndModeBean"
.end annotation


# instance fields
.field private actionButton:Ljava/lang/String;

.field private actionEnd:Ljava/lang/String;

.field private actionStart:Ljava/lang/String;

.field private actionValue:Ljava/lang/String;

.field private dndModeVersion:Ljava/lang/String;

.field private dsbEasyWakeup:Ljava/lang/String;

.field private dsbMsgNotify:Z

.field private dsbPhoneNotify:Ljava/lang/String;

.field private enable:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private minDarkScreen:Ljava/lang/String;

.field private start:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionButton()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionButton:Ljava/lang/String;

    return-object v0
.end method

.method public getActionEnd()Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getActionStart()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getActionValue()Ljava/lang/String;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDndModeVersion()Ljava/lang/String;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dndModeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDsbEasyWakeup()Ljava/lang/String;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbEasyWakeup:Ljava/lang/String;

    return-object v0
.end method

.method public getDsbPhoneNotify()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbPhoneNotify:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getMinDarkScreen()Ljava/lang/String;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->minDarkScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->start:Ljava/lang/String;

    return-object v0
.end method

.method public isDsbMsgNotify()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbMsgNotify:Z

    return v0
.end method

.method public setActionButton(Ljava/lang/String;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionButton:Ljava/lang/String;

    return-void
.end method

.method public setActionEnd(Ljava/lang/String;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionEnd:Ljava/lang/String;

    return-void
.end method

.method public setActionStart(Ljava/lang/String;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionStart:Ljava/lang/String;

    return-void
.end method

.method public setActionValue(Ljava/lang/String;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->actionValue:Ljava/lang/String;

    return-void
.end method

.method public setDndModeVersion(Ljava/lang/String;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dndModeVersion:Ljava/lang/String;

    return-void
.end method

.method public setDsbEasyWakeup(Ljava/lang/String;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbEasyWakeup:Ljava/lang/String;

    return-void
.end method

.method public setDsbMsgNotify(Z)V
    .locals 0

    .line 848
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbMsgNotify:Z

    return-void
.end method

.method public setDsbPhoneNotify(Ljava/lang/String;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->dsbPhoneNotify:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->enable:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setMinDarkScreen(Ljava/lang/String;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->minDarkScreen:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;->start:Ljava/lang/String;

    return-void
.end method
