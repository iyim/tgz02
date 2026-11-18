.class public Lcom/taobao/android/dinamicx/template/utils/DXTemplateNamePathUtil;
.super Ljava/lang/Object;
.source "DXTemplateNamePathUtil.java"


# static fields
.field public static final ASSET_DIR:Ljava/lang/String; = "template/"

.field public static final ASSET_PRESET_TEMPLATE_INFOLIST:Ljava/lang/String; = "/presetTemplateInfos.json"

.field public static final ASSET_PRESET_TEMPLATE_OTHER:Ljava/lang/String; = "other"

.field public static final ASSET_PRESET_TEMPLATE_VERSION:Ljava/lang/String; = "version"

.field public static final DB_NAME:Ljava/lang/String; = "dinamicx"

.field public static final DEFAULT_ROOT_DIR:Ljava/lang/String; = "dinamicx/"

.field public static final DIR:C = '/'

.field public static final DX_MAIN_TEMPLATE_NAME:Ljava/lang/String; = "main.dx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static findMaxVersion([Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_3

    .line 42
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    array-length v2, p0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 49
    :try_start_0
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0

    :cond_1
    move-wide v5, v0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 59
    :try_start_1
    aget-object v3, p0, v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    cmp-long v3, v5, v0

    if-lez v3, :cond_2

    move-wide v0, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public static isValid(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValid(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/taobao/android/dinamicx/template/utils/DXTemplateNamePathUtil;->isValid(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
