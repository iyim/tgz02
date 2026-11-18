.class public final enum Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
.super Ljava/lang/Enum;
.source "ZipAppTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v1, 0x0

    const-string v2, "ZIP_APP_TYPE_PACKAGEAPP"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v2, 0x1

    const-string v3, "ZIP_APP_TYPE_ZCACHE"

    const-wide/16 v4, 0x10

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v3, 0x2

    const-string v4, "ZIP_APP_TYPE_REACT"

    const-wide/16 v5, 0x20

    invoke-direct {v0, v4, v3, v5, v6}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v4, 0x3

    const-string v5, "ZIP_APP_TYPE_ZCACHE2"

    const-wide/16 v6, 0x30

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v5, 0x4

    const-string v6, "ZIP_APP_TYPE_MINI_APP"

    const-wide/16 v7, 0x40

    invoke-direct {v0, v6, v5, v7, v8}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v6, 0x5

    const-string v7, "ZIP_APP_TYPE_UNKNOWN"

    const-wide/16 v8, 0xf0

    invoke-direct {v0, v7, v6, v8, v9}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    sget-object v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v7, v0, v1

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_MINI_APP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v6

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-wide p3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1

    .line 6
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 16
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-void
.end method
