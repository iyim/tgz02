.class public final enum Landroid/taobao/windvane/util/MimeTypeEnum;
.super Ljava/lang/Enum;
.source "MimeTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/util/MimeTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;


# instance fields
.field private mimeType:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 17
    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v1, 0x0

    const-string v2, "JS"

    const-string v3, "js"

    const-string v4, "application/x-javascript"

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v2, 0x1

    const-string v3, "CSS"

    const-string v4, "css"

    const-string/jumbo v5, "text/css"

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v3, "image/jpeg"

    const/4 v4, 0x2

    const-string v5, "JPG"

    const-string v6, "jpg"

    invoke-direct {v0, v5, v4, v6, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v5, 0x3

    const-string v6, "JPEG"

    const-string v7, "jpep"

    invoke-direct {v0, v6, v5, v7, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v3, 0x4

    const-string v6, "SVG"

    const-string/jumbo v7, "svg"

    const-string v8, "image/svg+xml"

    invoke-direct {v0, v6, v3, v7, v8}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v6, 0x5

    const-string v7, "PNG"

    const-string v8, "png"

    const-string v9, "image/png"

    invoke-direct {v0, v7, v6, v8, v9}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

    .line 18
    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v7, 0x6

    const-string v8, "WEBP"

    const-string/jumbo v9, "webp"

    const-string v10, "image/webp"

    invoke-direct {v0, v8, v7, v9, v10}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/4 v8, 0x7

    const-string v9, "GIF"

    const-string v10, "gif"

    const-string v11, "image/gif"

    invoke-direct {v0, v9, v8, v10, v11}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v9, "text/html"

    const/16 v10, 0x8

    const-string v11, "HTM"

    const-string v12, "htm"

    invoke-direct {v0, v11, v10, v12, v9}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const/16 v11, 0x9

    const-string v12, "HTML"

    const-string v13, "html"

    invoke-direct {v0, v12, v11, v13, v9}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    const/16 v0, 0xa

    .line 16
    new-array v0, v0, [Landroid/taobao/windvane/util/MimeTypeEnum;

    sget-object v9, Landroid/taobao/windvane/util/MimeTypeEnum;->JS:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v9, v0, v1

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v8

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v10

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v11

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1

    .line 16
    const-class v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1

    .line 16
    sget-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/MimeTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    return-void
.end method
