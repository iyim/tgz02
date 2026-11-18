.class public Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;
.super Ljava/lang/Object;
.source "TgBitmap.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->path:Ljava/lang/String;

    return-void
.end method
