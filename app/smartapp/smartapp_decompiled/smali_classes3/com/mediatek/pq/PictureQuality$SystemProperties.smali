.class public Lcom/mediatek/pq/PictureQuality$SystemProperties;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pq/PictureQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemProperties"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return p1
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
