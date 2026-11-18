.class Lorg/jdom/output/Format$DefaultEscapeStrategy;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lorg/jdom/output/EscapeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultEscapeStrategy"
.end annotation


# instance fields
.field private bits:I

.field canEncode:Ljava/lang/reflect/Method;

.field encoder:Ljava/lang/Object;

.field private final synthetic this$0:Lorg/jdom/output/Format;


# direct methods
.method public constructor <init>(Lorg/jdom/output/Format;Ljava/lang/String;)V
    .locals 6

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->this$0:Lorg/jdom/output/Format;

    const-string p1, "UTF-8"

    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "UTF-16"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "ISO-8859-1"

    .line 444
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Latin1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "US-ASCII"

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "ASCII"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 453
    iput p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    :try_start_0
    const-string v0, "java.nio.charset.Charset"

    .line 456
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "java.nio.charset.CharsetEncoder"

    .line 457
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forName"

    const/4 v3, 0x1

    .line 458
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/jdom/output/Format;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object v5, Lorg/jdom/output/Format;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v5, v4, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 459
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, p1

    const/4 p2, 0x0

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "newEncoder"

    .line 460
    invoke-virtual {v0, v4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    const-string p2, "canEncode"

    .line 462
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, p1

    invoke-virtual {v1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_4
    :goto_1
    const/4 p1, 0x7

    .line 450
    iput p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    goto :goto_4

    :cond_5
    :goto_2
    const/16 p1, 0x8

    .line 446
    iput p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    goto :goto_4

    :cond_6
    :goto_3
    const/16 p1, 0x10

    .line 442
    iput p1, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    :catch_0
    :goto_4
    return-void
.end method


# virtual methods
.method public shouldEscape(C)Z
    .locals 6

    .line 470
    iget v0, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->bits:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    const/16 v0, 0x7f

    if-le p1, v0, :cond_3

    return v3

    :cond_3
    return v1

    .line 486
    :cond_4
    iget-object v0, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->canEncode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/jdom/output/Format$DefaultEscapeStrategy;->encoder:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 488
    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 489
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v3

    return p1

    :catch_0
    :cond_5
    return v1
.end method
