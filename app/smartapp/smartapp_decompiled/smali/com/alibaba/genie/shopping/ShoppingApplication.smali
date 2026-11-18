.class public Lcom/alibaba/genie/shopping/ShoppingApplication;
.super Landroid/app/Application;
.source "ShoppingApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseProcessApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/ShoppingApplication$RunMode;
    }
.end annotation


# static fields
.field public static final MTOP_ONLINE_APPKEY:Ljava/lang/String; = "25020505"

.field public static final SMARTAPP_APP_KEY:Ljava/lang/String; = "26062527"

.field private static mShoppingApplication:Landroid/app/Application;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 208
    sget-object v0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    .line 65
    sput-object p1, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####-----shopping ShoppingApplication init ; current processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShoppingApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/tg/UtilsConfig;->setAppContext(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/APPLog;->init()V

    const-string v0, "com.alibaba.ailabs.genie.smartapp:temp"

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/ShoppingApplication;->initAppEnv()V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/ShoppingApplication;->initSecondSDK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x1

    .line 80
    :try_start_1
    invoke-static {p2}, Landroid/taobao/windvane/WindVaneSDK;->openLog(Z)V

    .line 82
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v0}, Landroid/taobao/windvane/WindVaneSDK;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    .line 84
    new-instance v0, Landroid/taobao/windvane/config/WVAppParams;

    invoke-direct {v0}, Landroid/taobao/windvane/config/WVAppParams;-><init>()V

    const-string v1, "26062527"

    .line 85
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    const-string v1, "genie-smartapp"

    .line 86
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appTag:Ljava/lang/String;

    const-string v1, "1.0.1"

    .line 87
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    const-string v1, "Uv+oSMKtIFt+4W0hDRGe8LN+G6iae9BK7++bvofc2QbvhvrsdE06x5ztEgtWp5KMbhn/uUicmQ/duplH+NoUuw=="

    const-string v2, "C47RAzbTrFZu74Od68I33lQuHdxhYQOxjB1QbWsVbKO3sPHBpKcBk6nDre1Ycx78Bwtqv8rW2q52DackJci43A=="

    .line 88
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.33-U4-3-rc2/release64/libkernelu4_zip_uc_3.22.1.71_windvane.so"

    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreRelease64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.33-U4-3-rc2/release32/libkernelu4_zip_uc_3.22.1.71_windvane.so"

    .line 94
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreRelease32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.33-U4-3-rc2/debug64/libkernelu4_zip_uc_3.22.1.71_windvane.so"

    .line 95
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreDebug64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.33-U4-3-rc2/debug32/libkernelu4_zip_uc_3.22.1.71_windvane.so"

    .line 96
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreDebug32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    .line 99
    invoke-static {p1, v0}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Landroid/taobao/windvane/config/WVAppParams;)V

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    new-instance v1, Lcom/alibaba/genie/shopping/ShoppingApplication$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/ShoppingApplication$1;-><init>(Lcom/alibaba/genie/shopping/ShoppingApplication;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setSceneInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_0
    new-instance v0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;-><init>()V

    .line 121
    new-instance v1, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDxWidgetMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 126
    new-instance v1, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withWebImageInterface(Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 130
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDebug(Z)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 132
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->build()Lcom/taobao/android/dinamicx/DXGlobalInitConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public initAppEnv()V
    .locals 2

    .line 214
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "26062527"

    .line 216
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 217
    sget-object v1, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 218
    sget-object v1, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method public initSecondSDK()V
    .locals 3

    .line 229
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    sget-object v2, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 237
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 141
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 142
    sput-object p0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->setAppContext(Landroid/content/Context;)V

    .line 152
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/APPLog;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    :try_start_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->init(Landroid/content/Context;)V

    .line 160
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->init(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    .line 169
    :try_start_2
    invoke-static {v0}, Landroid/taobao/windvane/WindVaneSDK;->openLog(Z)V

    .line 171
    sget-object v1, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v1}, Landroid/taobao/windvane/WindVaneSDK;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    .line 173
    new-instance v1, Landroid/taobao/windvane/config/WVAppParams;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVAppParams;-><init>()V

    const-string v2, "26062527"

    .line 174
    iput-object v2, v1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    const-string v2, "genie-smartapp"

    .line 175
    iput-object v2, v1, Landroid/taobao/windvane/config/WVAppParams;->appTag:Ljava/lang/String;

    const-string v2, "1.0.1"

    .line 176
    iput-object v2, v1, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    const-string v2, "Uv+oSMKtIFt+4W0hDRGe8LN+G6iae9BK7++bvofc2QbvhvrsdE06x5ztEgtWp5KMbhn/uUicmQ/duplH+NoUuw=="

    const-string v3, "C47RAzbTrFZu74Od68I33lQuHdxhYQOxjB1QbWsVbKO3sPHBpKcBk6nDre1Ycx78Bwtqv8rW2q52DackJci43A=="

    .line 177
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 179
    sget-object v2, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    invoke-static {v2, v1}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Landroid/taobao/windvane/config/WVAppParams;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 181
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    :goto_0
    new-instance v1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;-><init>()V

    .line 187
    new-instance v2, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    .line 189
    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDxWidgetMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 192
    new-instance v2, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

    invoke-direct {v2}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withWebImageInterface(Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 196
    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDebug(Z)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 198
    sget-object v0, Lcom/alibaba/genie/shopping/ShoppingApplication;->mShoppingApplication:Landroid/app/Application;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->build()Lcom/taobao/android/dinamicx/DXGlobalInitConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 200
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
