.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;
.super Ljava/lang/Object;
.source "DataLoaderConfig.java"


# static fields
.field public static final DATA_LOADER_TYPE_CLIENT:Ljava/lang/String; = "dataLoaderTypeClient"

.field public static final DATA_LOADER_TYPE_REMOTE:Ljava/lang/String; = "dataLoaderTypeRemote"

.field public static final DATA_PARSER_TYPE_SCRIPT:Ljava/lang/String; = "dataLoaderParserScript"


# instance fields
.field dataLoadType:Ljava/lang/String;

.field dataParseType:Ljava/lang/String;

.field loadDataInCurrThread:Z

.field mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

.field scriptMd5:Ljava/lang/String;

.field scriptUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dataLoaderTypeClient"

    .line 18
    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataLoadType:Ljava/lang/String;

    const-string v0, "dataLoaderParserScript"

    .line 20
    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataParseType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->loadDataInCurrThread:Z

    return-void
.end method

.method public static createConfig()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;
    .locals 1

    .line 32
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDataLoadType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataLoadType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataParseType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataParseType:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptMd5()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->scriptMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->scriptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateInfo()Lcom/alibaba/android/ultron/engine/template/TemplateInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isLoadDataInCurrThread()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->loadDataInCurrThread:Z

    return v0
.end method

.method public setDataLoadType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataLoadType:Ljava/lang/String;

    return-void
.end method

.method public setDataParseType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->dataParseType:Ljava/lang/String;

    return-void
.end method

.method public setLoadDataInCurrThread(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->loadDataInCurrThread:Z

    return-void
.end method

.method public setScriptMd5(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->scriptMd5:Ljava/lang/String;

    return-void
.end method

.method public setScriptUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->scriptUrl:Ljava/lang/String;

    return-void
.end method

.method public setTemplateInfo(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    return-void
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->mTemplateInfo:Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->setUrl(Ljava/lang/String;)V

    return-void
.end method
