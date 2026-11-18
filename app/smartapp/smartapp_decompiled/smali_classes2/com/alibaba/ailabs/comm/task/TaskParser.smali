.class public Lcom/alibaba/ailabs/comm/task/TaskParser;
.super Ljava/lang/Object;
.source "TaskParser.java"


# static fields
.field private static final PERSISTENT_APP:Ljava/lang/String; = "persistentApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getBootInfoByFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "product_attribute_mirror"

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    const-string v1, "data"

    .line 260
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "persistentApp"

    .line 264
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "value"

    .line 266
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "QUICK"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerOnSettingFile\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getTaskType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "music"

    .line 472
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "applet"

    .line 474
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "desktop"

    .line 476
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const-string v0, "video"

    .line 478
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static initNewTaskConfig(Lorg/json/JSONObject;)Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;
    .locals 22

    .line 374
    new-instance v0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;-><init>()V

    const-string v1, "newtask"

    move-object/from16 v2, p0

    .line 375
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_8

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " newTaskString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YuanZhiBiao"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const-string v6, "enable"

    .line 382
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 383
    invoke-virtual {v0, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->setEnable(Z)V

    .line 385
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "cfg"

    .line 387
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_7

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object v8, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_6

    .line 393
    new-instance v9, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;

    invoke-direct {v9}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;-><init>()V

    .line 394
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v11, "type"

    .line 398
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 399
    invoke-virtual {v9, v12}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;->setType(Ljava/lang/String;)V

    .line 401
    invoke-static {v12}, Lcom/alibaba/ailabs/comm/task/TaskParser;->getTaskType(Ljava/lang/String;)I

    move-result v13

    const-string v14, "SceneExecutor"

    if-nez v13, :cond_1

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parser error task type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v17, v1

    move/from16 v19, v6

    goto/16 :goto_5

    .line 406
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->clear()V

    const-string v12, "list"

    .line 407
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/alibaba/ailabs/genie/utils/GenieListUtils;->parserStringList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 409
    invoke-virtual {v9, v8}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;->setList(Ljava/util/List;)V

    const-string v13, "name"

    .line 411
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 412
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 413
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v13, "mode"

    .line 416
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 417
    invoke-virtual {v9, v15}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;->setMode(Ljava/lang/String;)V

    const-string v15, "execute"

    .line 419
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 420
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v10, :cond_5

    .line 423
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object/from16 v16, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    move-object/from16 v17, v1

    .line 426
    new-instance v1, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;-><init>()V

    move/from16 v18, v3

    .line 428
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move/from16 v19, v6

    .line 429
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setType(Ljava/lang/String;)V

    .line 431
    invoke-static {v6}, Lcom/alibaba/ailabs/comm/task/TaskParser;->getTaskType(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_3

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parser execute task type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    goto/16 :goto_4

    .line 437
    :cond_3
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setMode(Ljava/lang/String;)V

    const-string v6, "policy"

    .line 438
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setPolicy(I)V

    const-string v6, "action"

    .line 439
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setAction(Ljava/lang/String;)V

    const-string v6, "launchMode"

    .line 440
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setLaunchMode(Ljava/lang/String;)V

    const-string v6, "pkg"

    .line 441
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setPkg(Ljava/lang/String;)V

    const-string v6, "data"

    .line 443
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object/from16 v20, v8

    .line 445
    new-instance v8, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;

    invoke-direct {v8}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;-><init>()V

    move-object/from16 v21, v10

    const-string v10, "Control"

    .line 446
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;->setControl(I)V

    .line 447
    invoke-virtual {v1, v8}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setData(Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;)V

    goto :goto_3

    :cond_4
    move-object/from16 v20, v8

    move-object/from16 v21, v10

    .line 449
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 450
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object/from16 v6, v16

    invoke-static {v3, v6}, Lcom/alibaba/ailabs/genie/utils/GenieListUtils;->parserStringList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 451
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->setList(Ljava/util/List;)V

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeBean= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    move/from16 v3, v18

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    goto/16 :goto_2

    :cond_5
    move-object/from16 v17, v1

    move/from16 v19, v6

    move-object/from16 v20, v8

    .line 456
    invoke-virtual {v9, v15}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;->setExecute(Ljava/util/List;)V

    .line 457
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v20

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v17

    move/from16 v6, v19

    const/16 v3, 0x32

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 459
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cfg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_7
    invoke-virtual {v0, v7}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->setCfg(Ljava/util/List;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newTaskConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0
.end method

.method private static initTask(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Lcom/alibaba/ailabs/comm/task/SceneDetector;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/comm/task/SceneExecutor;",
            "Lcom/alibaba/ailabs/comm/task/SceneDetector;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "enable"

    .line 288
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->setEnableTask(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableTask()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "cfg"

    .line 293
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x1

    const-string v4, "SceneExecutor"

    if-eqz v1, :cond_9

    .line 301
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object v6, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v5, :cond_9

    .line 303
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    .line 307
    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-static {v8}, Lcom/alibaba/ailabs/comm/task/TaskParser;->getTaskType(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parser error task type = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 313
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const-string v8, "list"

    .line 314
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/alibaba/ailabs/genie/utils/GenieListUtils;->parserStringList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const-string v8, "name"

    .line 315
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 317
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v8, "mode"

    .line 319
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "app"

    .line 320
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, ", info = "

    if-eqz v10, :cond_6

    .line 321
    invoke-virtual {p1, v9, v6}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskApp(ILjava/util/List;)V

    const-string v8, "policy"

    .line 323
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_5

    .line 326
    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addNotKillTaskApp(Ljava/util/List;)V

    .line 328
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parser task app type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v7, "page"

    .line 329
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 330
    invoke-virtual {p1, v9, v6}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskPage(ILjava/util/List;)V

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parser task page type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v7, "superapp"

    .line 332
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 333
    invoke-virtual {p1, v9, v6}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addSuperTaskPage(ILjava/util/List;)V

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parser task superapp type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parser error mode="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_9
    const-string p1, "execute"

    .line 340
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 342
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_d

    .line 344
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v5}, Lcom/alibaba/ailabs/comm/task/TaskParser;->getTaskType(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parser execute task type = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 351
    :cond_a
    new-instance v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;

    invoke-direct {v5}, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;-><init>()V

    const-string v7, "action"

    .line 353
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->action:Ljava/lang/String;

    const-string v7, "pkg"

    .line 354
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->packageName:Ljava/lang/String;

    const-string v7, "data"

    .line 355
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->data:Lorg/json/JSONObject;

    const-string v7, "launchMode"

    .line 356
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "broadcast"

    .line 358
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 359
    iput v0, v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->type:I

    goto :goto_3

    :cond_b
    const-string v7, "service"

    .line 360
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 361
    iput v3, v5, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->type:I

    .line 366
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser execute, type= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " success = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v5}, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->addExecuteInfo(ILcom/alibaba/ailabs/comm/task/ExecuteInfo;)V

    goto :goto_4

    .line 363
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parser execute error = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public static onParser(Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/SceneExecutor;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->reset()V

    .line 142
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/comm/task/TaskParser;->onParserImportanceConfig(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Lorg/json/JSONObject;)Z

    .line 144
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt p2, v2, :cond_1

    .line 145
    invoke-static {p1, p0}, Lcom/alibaba/ailabs/comm/task/TaskParser;->onUpdateWhiteListFromAGUI(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Landroid/content/Context;)V

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;

    move-result-object p0

    .line 154
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0x32

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "scene"

    .line 157
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "enable"

    .line 159
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->setEnableScene(Z)V

    const-string v3, "cfg"

    .line 160
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 163
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object v4, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v3, :cond_5

    .line 165
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "type"

    .line 169
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "SceneExecutor"

    if-eqz v7, :cond_3

    .line 171
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser error scene type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    const-string v7, "list"

    .line 175
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/alibaba/ailabs/genie/utils/GenieListUtils;->parserStringList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const-string v7, "name"

    .line 176
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 178
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser scene,key = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", info = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, v6, v4}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addScene(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    move-object p2, v4

    :cond_6
    const-string v2, "task"

    .line 191
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 192
    invoke-static {p1, p0, p2, v1}, Lcom/alibaba/ailabs/comm/task/TaskParser;->initTask(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Lcom/alibaba/ailabs/comm/task/SceneDetector;Ljava/util/List;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YuanZhiBiao"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static onParser(Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/SceneExecutor;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 44
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/comm/utils/Utils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p2}, Lcom/alibaba/ailabs/comm/utils/Utils;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/comm/task/TaskParser;->onParser(Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/SceneExecutor;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onParserImportanceConfig(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Lorg/json/JSONObject;)Z
    .locals 10
    .param p0    # Lcom/alibaba/ailabs/comm/task/SceneExecutor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;

    move-result-object v1

    if-eqz v1, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 61
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;-><init>()V

    :try_start_0
    const-string v2, "hotAmpe"

    const/4 v3, 0x1

    .line 63
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setHotAmpe(Z)V

    const-string v2, "isClose"

    .line 64
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setClose(Z)V

    const-string v2, "whiteList"

    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 68
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 69
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 70
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setWhiteList(Ljava/util/Set;)V

    :cond_2
    const-string v2, "gestureList"

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 78
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 79
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setGestureList(Ljava/util/List;)V

    :cond_4
    const-string v2, "skipList"

    .line 84
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 86
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 87
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 88
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setSkipList(Ljava/util/Set;)V

    :cond_6
    const-string v2, "blackList"

    .line 93
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 96
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 97
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "when"

    .line 98
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {v6}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    const-string v7, "then"

    .line 103
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_5

    .line 108
    :cond_8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    .line 109
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 110
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 112
    :cond_9
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 114
    :cond_a
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->setBlackLists(Ljava/util/Map;)V

    .line 117
    :cond_b
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->setImportanceConfig(Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_6
    return v0
.end method

.method private static onUpdateWhiteListFromAGUI(Lcom/alibaba/ailabs/comm/task/SceneExecutor;Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    if-eqz p0, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getImportanceConfig()Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const-string v1, "user"

    .line 217
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 218
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    const-string v2, "QUICK"

    if-eqz v1, :cond_1

    const-string v0, "isUserUnlocked"

    .line 219
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p1

    const-string v0, "persistentApp"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getProductSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_1
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "persistentApp NULL"

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistentApp = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dataList"

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 234
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "packageName"

    .line 235
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 239
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getImportanceConfig()Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->getWhiteList()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_5

    .line 244
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 246
    :cond_5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistentApp Add "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ALL Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method
