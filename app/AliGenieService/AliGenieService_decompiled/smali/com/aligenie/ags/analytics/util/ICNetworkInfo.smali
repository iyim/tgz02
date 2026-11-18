.class public Lcom/aligenie/ags/analytics/util/ICNetworkInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;,
        Lcom/aligenie/ags/analytics/util/ICNetworkInfo$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    :goto_2
    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_2
    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;

    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v4, "NoValue"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->UNKNOWN:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    iput-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->b:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    iput-object v4, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    const-string v0, "Active Network Info is null"

    .line 1
    invoke-static {v0, v3, v5}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pppoe"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->PPPOE:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_2

    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->ETHERNET:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_3

    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->WIFI:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->UNKNOWN:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    :goto_0
    iput-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->b:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    iget-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->b:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    sget-object v6, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->ETHERNET:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    if-ne v0, v6, :cond_18

    iput-object v5, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    const-string v6, "dhcp.eth0.gateway"

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "ethernet"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "android.net.EthernetManager"

    .line 3
    :try_start_1
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "android.net.IpConfiguration"

    :try_start_2
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v11, "getConfiguration"

    new-array v12, v8, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "getIpAssignment"

    new-array v11, v8, [Ljava/lang/Class;

    invoke-virtual {v10, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "STATIC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v11, :cond_4

    const-string v5, "android.net.StaticIpConfiguration"

    :try_start_3
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getStaticIpConfiguration"

    new-array v11, v8, [Ljava/lang/Class;

    invoke-virtual {v10, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "gateway"

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "DHCP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "getGatewayUseAndroidMethod:"

    invoke-static {v5, v3, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "eth_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "ethernet_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_7

    const-string v5, "manual"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "eth_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "ethernet_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual ethernet configuration, gateway="

    goto :goto_1

    :cond_7
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp ethernet configuration, gateway="

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    move-object v5, v2

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGatewayUseAndroidMethod:gateway="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x4

    const/4 v2, 0x3

    if-nez v5, :cond_11

    const-string v5, "/proc/net/route"

    .line 4
    invoke-static {v5}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_10

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "\t"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, -0x1

    move v11, v8

    move v12, v10

    move v13, v12

    :goto_3
    array-length v14, v6

    if-ge v11, v14, :cond_b

    aget-object v14, v6, v11

    const-string v15, "Gateway"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v15}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    move v12, v11

    goto :goto_4

    :cond_9
    aget-object v14, v6, v11

    const-string v15, "Destination"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {v15}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    move v13, v11

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    if-eq v12, v10, :cond_10

    if-ne v13, v10, :cond_c

    goto/16 :goto_7

    :cond_c
    move v6, v7

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v14, v8

    :goto_6
    array-length v15, v11

    if-ge v14, v15, :cond_e

    aget-object v15, v11, v14

    if-eqz v15, :cond_d

    aget-object v15, v11, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_d

    aget-object v15, v11, v14

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v2, :cond_f

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v14, "00000000"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "."

    invoke-static {v9, v11}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_10
    :goto_7
    const/4 v5, 0x0

    :cond_11
    :goto_8
    if-eqz v5, :cond_17

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_12

    goto :goto_b

    :cond_12
    const-string v6, "/proc/net/arp"

    invoke-static {v6}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_16

    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_16

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v11, v8

    :goto_a
    array-length v12, v10

    if-ge v11, v12, :cond_14

    aget-object v12, v10, v11

    if-eqz v12, :cond_13

    aget-object v12, v10, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_13

    aget-object v12, v10, v11

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_14
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v0, :cond_15

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_16
    :goto_b
    const/4 v0, 0x0

    .line 6
    :goto_c
    iput-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    goto :goto_d

    :cond_17
    const-string v0, "get gateway from route return null"

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v3, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 8
    :goto_d
    iget-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router Mac is null when type is ETHERNET, gateway is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_18
    sget-object v6, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->WIFI:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    if-ne v0, v6, :cond_1a

    iput-object v5, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-object v4, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    :cond_19
    iget-object v0, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_1c

    const-string v0, "Router Mac is null when type is WIFI"

    goto :goto_e

    :cond_1a
    sget-object v2, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->PPPOE:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    if-ne v0, v2, :cond_1b

    const-string v0, "can\'t get router mac when network type is PPPOE"

    invoke-static {v0, v3}, Lc/b/a/b/o/i;->c(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_f

    :cond_1b
    const-string v0, "unknown network type"

    :goto_e
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v3, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 10
    :goto_f
    iput-object v4, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    :cond_1c
    const-string v0, "NetworkType:"

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->b:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",RouterMac:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lc/b/a/b/o/i;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
