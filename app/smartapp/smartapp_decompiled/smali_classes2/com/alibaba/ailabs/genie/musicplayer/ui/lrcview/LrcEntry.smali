.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;
.super Ljava/lang/Object;
.source "LrcEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2


# instance fields
.field private lineSpace:F

.field private secondText:Ljava/lang/String;

.field private staticLayout:Landroid/text/StaticLayout;

.field private text:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->lineSpace:F

    .line 36
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->time:J

    .line 37
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-void
.end method

.method private getShowText()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 118
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->time:J

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->compareTo(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;)I

    move-result p1

    return p1
.end method

.method getHeight()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method getStaticLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method getTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->time:J

    return-wide v0
.end method

.method init(Landroid/text/TextPaint;II)V
    .locals 8

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 50
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 54
    :cond_0
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 45
    :cond_1
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 57
    :goto_1
    new-instance p3, Landroid/text/StaticLayout;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getShowText()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->lineSpace:F

    const/4 v7, 0x0

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method initStaticLayout(Landroid/text/TextPaint;II)V
    .locals 8

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 70
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 74
    :cond_0
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 65
    :cond_1
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 77
    :goto_1
    new-instance p3, Landroid/text/StaticLayout;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getShowText()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->lineSpace:F

    const/4 v7, 0x0

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method setSecondText(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    return-void
.end method
