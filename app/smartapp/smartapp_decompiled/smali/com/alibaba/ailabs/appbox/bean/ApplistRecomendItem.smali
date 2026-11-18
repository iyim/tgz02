.class public Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;
.super Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
.source "ApplistRecomendItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct/range {p0 .. p23}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static converApplistRecomendItemTotMarketAppItemBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;
    .locals 26

    move-object/from16 v0, p0

    .line 23
    :try_start_0
    new-instance v24, Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;

    iget-object v1, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subscript:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->author:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->icon:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->downloadUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->actionUrl:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->description:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->updateTime:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->title:Ljava/lang/String;

    iget-object v10, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->voiceDisposition:Ljava/lang/String;

    iget-object v11, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->bgPic:Ljava/lang/String;

    iget-object v12, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersion:Ljava/lang/String;

    iget-object v13, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->subTitle:Ljava/lang/String;

    iget-object v14, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->appId:Ljava/lang/String;

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->screenShot:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->apkVersionCode:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->packageName:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->uninstallable:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isCollected:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->businessType:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->ttsGuide:Ljava/lang/String;

    move-object/from16 v22, v15

    iget v15, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->installSize:I

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->isOffline:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v25

    invoke-direct/range {v0 .. v23}, Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v24

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
