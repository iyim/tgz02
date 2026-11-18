.class public Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;
.super Ljava/lang/Object;
.source "SystemStatusUtis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;
    }
.end annotation


# static fields
.field private static final CALL_STATUS_ARRAY:[Ljava/lang/String;

.field public static final CALL_STAUS_CALLING:I = 0x1

.field public static final CALL_STAUS_ESTABLISHED:I = 0x3

.field public static final CALL_STAUS_IDLE:I = 0x0

.field public static final CALL_STAUS_INCOMING:I = 0x2

.field private static mExtraApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final LAN:I

.field public final WALN:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "idle"

    const-string v1, "calling"

    const-string v2, "incoming"

    const-string v3, "established"

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->CALL_STATUS_ARRAY:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->WALN:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->LAN:I

    return-void
.end method

.method public static getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;
    .locals 3

    .line 70
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;-><init>()V

    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->macAddress:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->name:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x2

    .line 79
    iput v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getConnectedDevicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 82
    iput v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->pairName:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->pairName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemStatusUtis"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static getConnectedDevicesList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 360
    const-class v2, Landroid/bluetooth/BluetoothAdapter;

    :try_start_0
    const-string v3, "getConnectionState"

    const/4 v4, 0x0

    .line 362
    move-object v5, v4

    nop

    nop

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 365
    move-object v5, v4

    nop

    nop

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "SystemStatusUtis"

    if-ne v5, v6, :cond_1

    .line 368
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectedDevicesList, device number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 373
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    const-string v8, "isConnected"

    move-object v9, v4

    nop

    nop

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 375
    move-object v8, v4

    nop

    nop

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConnectedDevicesList: bluetooth device connected, NAME="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; BTMAC="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "getConnectedDevicesList, no bluetooth device connected"

    .line 383
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 386
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getExtraApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;",
            ">;"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->mExtraApps:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstalledApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 18

    const-string v0, "getInstalledApp"

    .line 238
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 241
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 242
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "versionCode"

    const-string v7, "versionName"

    const-string v8, "featureList"

    const-string v9, "pkgName"

    const-string v10, "/"

    if-eqz v5, :cond_6

    .line 244
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 245
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x80

    invoke-virtual {v3, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 246
    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_1

    .line 247
    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "features_pkg"

    const/4 v4, 0x0

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 249
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  meta_data = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v3

    const-string v3, "com.alibaba.ailabs.app.test"

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v14, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    .line 251
    :goto_1
    array-length v14, v3

    if-ge v12, v14, :cond_2

    .line 252
    aget-object v14, v3, v12

    iget-object v15, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v11

    aget-object v11, v3, v12

    invoke-virtual {v15, v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  pkg  = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v12

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  features = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    aget-object v15, v3, v12

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v17

    goto :goto_1

    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    .line 256
    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v11, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 258
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object/from16 v16, v3

    :cond_2
    move-object/from16 v17, v11

    :cond_3
    :goto_2
    move-object/from16 v3, v16

    move-object/from16 v11, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 263
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 264
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 265
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 271
    new-instance v11, Lorg/json/JSONArray;

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v4, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_5
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 279
    :cond_6
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getExtraApps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 281
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;

    .line 282
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 283
    iget-object v5, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appName"

    .line 284
    iget-object v11, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    iget-object v5, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    iget v5, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->versionCode:I

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    iget-object v5, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 289
    new-instance v11, Lorg/json/JSONArray;

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v4, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    iget-object v5, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_7
    iget-object v3, v3, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 296
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 298
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 301
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 303
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_9
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    :cond_a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "wifi"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 165
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 167
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->int2ip(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMacAddr(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :try_start_0
    const-string p0, "wlan0"

    goto :goto_0

    :cond_0
    const-string p0, "eth0"

    .line 331
    :goto_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 335
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 342
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-byte v5, p0, v4

    const-string v6, "%02X:"

    .line 344
    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 347
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 350
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static getNetWorkStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;
    .locals 6

    .line 177
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 182
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;-><init>()V

    const-string v2, "connectivity"

    .line 184
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 185
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getMacAddr(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->macAddress:Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    .line 188
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 189
    iput v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->status:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 191
    iput v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->status:I

    .line 193
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x64

    if-ne v2, v3, :cond_2

    const-string p0, "\u6709\u7ebf\u7f51\u7edc"

    .line 194
    iput-object p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    .line 195
    iput v4, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    goto :goto_1

    :cond_2
    const-string v2, "wifi"

    .line 197
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    .line 199
    iget-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    const-string v3, "\""

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    .line 202
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    add-int/2addr p0, v4

    iput p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    :goto_1
    const-string p0, "getNetWorkStatus"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    quantity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->quantity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   macAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static getPowerStatus(Landroid/content/Intent;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;
    .locals 7

    .line 121
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;-><init>()V

    const-string v1, "status"

    const/4 v2, -0x1

    .line 122
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "level"

    .line 124
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "scale"

    .line 125
    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v2, v3

    int-to-float p0, p0

    div-float/2addr v2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v2, v2, p0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    .line 129
    :goto_2
    iput v4, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;->status:I

    float-to-int p0, v2

    .line 130
    iput p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;->quantity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 220
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    const-string v2, "brightness"

    .line 221
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "power"

    .line 222
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "status"

    if-eqz p0, :cond_0

    :try_start_1
    const-string p0, "online"

    .line 225
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, "offline"

    .line 227
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getSpeakerStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;
    .locals 3

    .line 102
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;-><init>()V

    const-string v1, "audio"

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v1, 0x5

    .line 104
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    iput p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;->volume:I

    const/4 p0, 0x0

    .line 105
    iput-boolean p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;->isMute:Z

    .line 106
    iget p0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;->volume:I

    const/16 v1, 0x64

    if-le p0, v1, :cond_0

    .line 107
    iput v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;->volume:I

    :cond_0
    const-string p0, "SystemStatusUtis"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;->volume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static int2ip(I)Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "connectivity"

    .line 395
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 396
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static reportAllStatus(Lcom/alibaba/ailabs/geniesdk/status/StatusManager;Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x65

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getNetWorkStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    const/16 v0, 0x66

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    const/16 v0, 0x67

    .line 58
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getSpeakerStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    const/16 v0, 0xca

    .line 59
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getScreenStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reportAppInfo(Lcom/alibaba/ailabs/geniesdk/status/StatusManager;Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->softWareUpLoad(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setExtraApps(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 442
    sput-object p0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->mExtraApps:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static softWareUpLoad(Landroid/content/Context;)V
    .locals 1

    .line 319
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getInstalledApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->addFullAppFeature(Ljava/lang/String;)V

    return-void
.end method

.method public static updateCallStatus(I)V
    .locals 3

    .line 92
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->CALL_STATUS_ARRAY:[Ljava/lang/String;

    aget-object p0, v0, p0

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v0

    const/16 v1, 0xcb

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
