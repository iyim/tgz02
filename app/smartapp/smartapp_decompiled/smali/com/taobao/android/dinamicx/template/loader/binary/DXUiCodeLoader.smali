.class public Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;
.super Ljava/lang/Object;
.source "DXUiCodeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiCodeLoader_TMTEST"


# instance fields
.field private endPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;->endPos:I

    return v0
.end method

.method public loadFromBuffer(Ljava/lang/String;ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;)Z
    .locals 2

    .line 41
    invoke-virtual {p3, p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seekBy(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seekBy error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UiCodeLoader_TMTEST"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 45
    :goto_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result p2

    iput p2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;->endPos:I

    return p1
.end method
