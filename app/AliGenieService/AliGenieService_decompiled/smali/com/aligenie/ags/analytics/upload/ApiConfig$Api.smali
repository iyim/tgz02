.class public final enum Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum APP_UPDATE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum APP_USAGE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum BROADCAST_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum DISPLAY_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum HARD_KEY:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum JOYSTICK_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final enum TEMPERATURE_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

.field public static final synthetic b:[Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v1, 0x0

    const-string v2, "APP_INFO"

    invoke-direct {v0, v2, v1}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v2, 0x1

    const-string v3, "APP_UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_UPDATE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v3, 0x2

    const-string v4, "APP_USAGE"

    invoke-direct {v0, v4, v3}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_USAGE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v4, 0x3

    const-string v5, "HARD_KEY"

    invoke-direct {v0, v5, v4}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->HARD_KEY:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v5, 0x4

    const-string v6, "TEMPERATURE_INFO"

    invoke-direct {v0, v6, v5}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->TEMPERATURE_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v6, 0x5

    const-string v7, "JOYSTICK_INFO"

    invoke-direct {v0, v7, v6}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->JOYSTICK_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v7, 0x6

    const-string v8, "SYSTEM_INFO"

    invoke-direct {v0, v8, v7}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/4 v8, 0x7

    const-string v9, "DISPLAY_INFO"

    invoke-direct {v0, v9, v8}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->DISPLAY_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    new-instance v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/16 v9, 0x8

    const-string v10, "BROADCAST_INFO"

    invoke-direct {v0, v10, v9}, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->BROADCAST_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    sget-object v10, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v10, v0, v1

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_UPDATE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_USAGE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->HARD_KEY:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->TEMPERATURE_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->JOYSTICK_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->DISPLAY_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->BROADCAST_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    aput-object v1, v0, v9

    sput-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->b:[Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;
    .locals 1

    const-class v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    return-object p0
.end method

.method public static values()[Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;
    .locals 1

    sget-object v0, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->b:[Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    invoke-virtual {v0}, [Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    return-object v0
.end method
