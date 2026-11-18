.class public final enum Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;
.super Ljava/lang/Enum;
.source "RestFieldsScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ACCESS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ACCESS_SUBTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum APPKEY:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum APPVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ARG1:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ARG2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ARG3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum BRAND:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum CARRIER:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum CHANNEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum DEVICE_MODEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum EVENTID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum IMEI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum IMSI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum LANGUAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum LL_USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum LL_USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum OS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum OSVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum PAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RECORD_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESERVE2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESERVE3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESERVE4:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESERVE5:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESERVES:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum RESOLUTION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum SDKTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum SDKVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum START_SESSION_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

.field public static final enum UTDID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v1, 0x0

    const-string v2, "IMEI"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMEI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 15
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v2, 0x1

    const-string v3, "IMSI"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMSI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 16
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v3, 0x2

    const-string v4, "BRAND"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->BRAND:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 17
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v4, 0x3

    const-string v5, "DEVICE_MODEL"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 18
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v5, 0x4

    const-string v6, "RESOLUTION"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 19
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v6, 0x5

    const-string v7, "CARRIER"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CARRIER:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 20
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v7, 0x6

    const-string v8, "ACCESS"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 21
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/4 v8, 0x7

    const-string v9, "ACCESS_SUBTYPE"

    invoke-direct {v0, v9, v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 22
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v9, 0x8

    const-string v10, "CHANNEL"

    invoke-direct {v0, v10, v9}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CHANNEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 23
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v10, 0x9

    const-string v11, "APPKEY"

    invoke-direct {v0, v11, v10}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPKEY:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 24
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v11, 0xa

    const-string v12, "APPVERSION"

    invoke-direct {v0, v12, v11}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 25
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v12, 0xb

    const-string v13, "LL_USERNICK"

    invoke-direct {v0, v13, v12}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 26
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v13, 0xc

    const-string v14, "USERNICK"

    invoke-direct {v0, v14, v13}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 27
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v14, 0xd

    const-string v15, "LL_USERID"

    invoke-direct {v0, v15, v14}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 28
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v15, 0xe

    const-string v14, "USERID"

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 29
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "LANGUAGE"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 30
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "OS"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 31
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "OSVERSION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OSVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 32
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "SDKVERSION"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 33
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "START_SESSION_TIMESTAMP"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 34
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "UTDID"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->UTDID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 35
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "SDKTYPE"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 36
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RESERVE2"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 37
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RESERVE3"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 38
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RESERVE4"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE4:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 39
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RESERVE5"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE5:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 40
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RESERVES"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVES:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 41
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "RECORD_TIMESTAMP"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 42
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "PAGE"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->PAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 43
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "EVENTID"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->EVENTID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 44
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "ARG1"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG1:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 45
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "ARG2"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 46
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "ARG3"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    .line 47
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const-string v14, "ARGS"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v0, 0x22

    .line 12
    new-array v0, v0, [Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    sget-object v14, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMEI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v14, v0, v1

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMSI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->BRAND:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CARRIER:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CHANNEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPKEY:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v12

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    aput-object v1, v0, v13

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OSVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->UTDID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE4:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE5:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVES:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->PAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->EVENTID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG1:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->$VALUES:[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;
    .locals 1

    .line 12
    const-class v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;
    .locals 1

    .line 12
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->$VALUES:[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, [Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    return-object v0
.end method
