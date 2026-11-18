.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;
.super Ljava/lang/Object;
.source "DesktopGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopCardDTOSBean;,
        Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopMenuDTOSBean;,
        Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;
    }
.end annotation


# instance fields
.field private deskTopCardDTOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopCardDTOSBean;",
            ">;"
        }
    .end annotation
.end field

.field private deskTopMenuDTOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopMenuDTOSBean;",
            ">;"
        }
    .end annotation
.end field

.field private intentNames:Ljava/lang/Object;

.field private promptCorpusResultDTO:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;

.field private skillId:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDeskTopCardDTOS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopCardDTOSBean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->deskTopCardDTOS:Ljava/util/List;

    return-object v0
.end method

.method public getDeskTopMenuDTOS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopMenuDTOSBean;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->deskTopMenuDTOS:Ljava/util/List;

    return-object v0
.end method

.method public getIntentNames()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->intentNames:Ljava/lang/Object;

    return-object v0
.end method

.method public getPromptCorpusResultDTO()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->promptCorpusResultDTO:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;

    return-object v0
.end method

.method public getSkillId()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->skillId:Ljava/lang/Object;

    return-object v0
.end method

.method public setDeskTopCardDTOS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopCardDTOSBean;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->deskTopCardDTOS:Ljava/util/List;

    return-void
.end method

.method public setDeskTopMenuDTOS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$DeskTopMenuDTOSBean;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->deskTopMenuDTOS:Ljava/util/List;

    return-void
.end method

.method public setIntentNames(Ljava/lang/Object;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->intentNames:Ljava/lang/Object;

    return-void
.end method

.method public setPromptCorpusResultDTO(Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->promptCorpusResultDTO:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean$PromptCorpusResultDTOBean;

    return-void
.end method

.method public setSkillId(Ljava/lang/Object;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;->skillId:Ljava/lang/Object;

    return-void
.end method
