.class public Lcom/taobao/android/sku/debug/InstantRunTools;
.super Ljava/lang/Object;
.source "InstantRunTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static readDebugBizFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/taobao/android/sku/utils/PermissionUtils;->hasReadStoragePermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 46
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 50
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/taobao/sku/open/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 57
    array-length v2, v1

    if-gtz v2, :cond_4

    goto :goto_1

    .line 61
    :cond_4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    const-string v5, ".js"

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0

    .line 70
    :cond_7
    invoke-static {p0}, Lcom/taobao/android/sku/utils/PermissionUtils;->grantReadStoragePermissions(Landroid/content/Context;)V

    :catch_0
    :cond_8
    return-object v0
.end method

.method private static readDebugFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, ""

    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 97
    new-array v3, v3, [B

    .line 98
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 100
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v4, v1

    .line 105
    :catch_1
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static readDebugJSFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "skuCore.js"

    .line 81
    invoke-static {p0, v0}, Lcom/taobao/android/sku/debug/InstantRunTools;->readDebugFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readDebugUltronFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "originalUltronData.json"

    .line 77
    invoke-static {p0, v0}, Lcom/taobao/android/sku/debug/InstantRunTools;->readDebugFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeDebugFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, ""

    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v1, Lcom/taobao/android/sku/widget/ExtraDialog;

    sget v2, Lcom/taobao/android/sku/lib/R$style;->Alix_Sku_PopupDialog:I

    invoke-direct {v1, p0, v2}, Lcom/taobao/android/sku/widget/ExtraDialog;-><init>(Landroid/content/Context;I)V

    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/taobao/android/sku/lib/R$layout;->xsku_instant_run_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    sget v3, Lcom/taobao/android/sku/lib/R$id;->sku_et_instant_run_input:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 129
    sget v4, Lcom/taobao/android/sku/lib/R$id;->sku_btn_confirm:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 130
    sget v5, Lcom/taobao/android/sku/lib/R$id;->sku_btn_cancel:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 132
    sget v6, Lcom/taobao/android/sku/lib/R$id;->iv_search_item:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 133
    sget v7, Lcom/taobao/android/sku/lib/R$id;->et_search_input:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 138
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v9

    .line 139
    new-array v9, v9, [B

    .line 140
    invoke-virtual {v8, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 142
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v10, v0

    .line 147
    :catch_1
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    invoke-static {p0, p2}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getAssetsFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v10

    .line 151
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object p2, v0

    .line 154
    :cond_2
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    new-instance p2, Lcom/taobao/android/sku/debug/InstantRunTools$1;

    invoke-direct {p2, v3, v7, p0}, Lcom/taobao/android/sku/debug/InstantRunTools$1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance p2, Lcom/taobao/android/sku/debug/InstantRunTools$2;

    invoke-direct {p2, v3, p0, p1, v1}, Lcom/taobao/android/sku/debug/InstantRunTools$2;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/android/sku/widget/ExtraDialog;)V

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance p0, Lcom/taobao/android/sku/debug/InstantRunTools$3;

    invoke-direct {p0, v1}, Lcom/taobao/android/sku/debug/InstantRunTools$3;-><init>(Lcom/taobao/android/sku/widget/ExtraDialog;)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, -0x2

    .line 207
    invoke-virtual {v1, v2, p0, p0}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;II)V

    return-void
.end method

.method public static writeDebugJSFile(Landroid/content/Context;)V
    .locals 2

    const-string v0, "skuCore.js"

    const-string v1, "script/skuCore.js"

    .line 117
    invoke-static {p0, v0, v1}, Lcom/taobao/android/sku/debug/InstantRunTools;->writeDebugFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static writeDebugUltronFile(Landroid/content/Context;)V
    .locals 2

    const-string v0, "originalUltronData.json"

    const-string v1, "ultron/originalUltronData.json"

    .line 113
    invoke-static {p0, v0, v1}, Lcom/taobao/android/sku/debug/InstantRunTools;->writeDebugFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
