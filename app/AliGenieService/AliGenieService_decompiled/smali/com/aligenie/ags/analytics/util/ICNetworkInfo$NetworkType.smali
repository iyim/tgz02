.class public final enum Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/util/ICNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETHERNET:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

.field public static final enum PPPOE:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

.field public static final enum UNKNOWN:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

.field public static final enum WIFI:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

.field public static final synthetic b:[Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    const/4 v1, 0x0

    const-string v2, "PPPOE"

    invoke-direct {v0, v2, v1}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->PPPOE:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    new-instance v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    const/4 v2, 0x1

    const-string v3, "ETHERNET"

    invoke-direct {v0, v3, v2}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->ETHERNET:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    new-instance v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->WIFI:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    new-instance v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->UNKNOWN:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    sget-object v5, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->PPPOE:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->ETHERNET:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->WIFI:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->UNKNOWN:Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->b:[Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;
    .locals 1

    const-class v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;
    .locals 1

    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->b:[Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    invoke-virtual {v0}, [Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aligenie/ags/analytics/util/ICNetworkInfo$NetworkType;

    return-object v0
.end method
