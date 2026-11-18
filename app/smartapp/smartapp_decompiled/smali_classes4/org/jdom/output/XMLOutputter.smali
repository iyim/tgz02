.class public Lorg/jdom/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/output/XMLOutputter$NamespaceStack;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XMLOutputter.java,v $ $Revision: 1.116 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"

.field protected static final preserveFormat:Lorg/jdom/output/Format;


# instance fields
.field protected currentFormat:Lorg/jdom/output/Format;

.field private escapeOutput:Z

.field private userFormat:Lorg/jdom/output/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    sput-object v0, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/Format;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 149
    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 150
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/XMLOutputter;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 162
    iget-object p1, p1, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 163
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method private createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .locals 1

    .line 1548
    new-instance v0, Lorg/jdom/output/XMLOutputter$NamespaceStack;

    invoke-direct {v0, p0}, Lorg/jdom/output/XMLOutputter$NamespaceStack;-><init>(Lorg/jdom/output/XMLOutputter;)V

    return-object v0
.end method

.method private endsWithWhite(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private indent(Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1215
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isAllWhitespace(Ljava/lang/Object;)Z
    .locals 3

    .line 1291
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1292
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1294
    :cond_0
    instance-of v0, p1, Lorg/jdom/Text;

    if-eqz v0, :cond_3

    .line 1295
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 1304
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1305
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 1297
    :cond_3
    instance-of p1, p1, Lorg/jdom/EntityRef;

    if-eqz p1, :cond_4

    :cond_4
    return v1
.end method

.method private makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method private static makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UTF8"

    .line 338
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method private newline(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static nextNonText(Ljava/util/List;I)I
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1276
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 1278
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1279
    instance-of v2, v1, Lorg/jdom/Text;

    if-nez v2, :cond_1

    instance-of v1, v1, Lorg/jdom/EntityRef;

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    invoke-virtual {p2}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1181
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1182
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 1183
    invoke-direct {p0, p1, v1, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_9

    if-ne v0, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 974
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 979
    instance-of v3, v2, Lorg/jdom/Text;

    if-nez v3, :cond_6

    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    .line 998
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 1001
    :cond_2
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 1003
    instance-of v1, v2, Lorg/jdom/Comment;

    if-eqz v1, :cond_3

    .line 1004
    nop

    nop

    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    goto :goto_2

    .line 1006
    :cond_3
    instance-of v1, v2, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    .line 1007
    nop

    nop

    invoke-virtual {p0, p1, v2, p5, p6}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_2

    .line 1009
    :cond_4
    instance-of v1, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v1, :cond_5

    .line 1010
    nop

    nop

    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_6
    :goto_3
    invoke-direct {p0, p2, v0}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v0

    .line 982
    invoke-static {p2, v0}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v2

    if-ge v0, v2, :cond_8

    if-nez v1, :cond_7

    .line 987
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 988
    :cond_7
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 989
    invoke-direct {p0, p1, p2, v0, v2}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    return-void
.end method

.method private printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p2

    .line 1167
    sget-object v0, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-ne p2, v0, :cond_0

    return-void

    .line 1170
    :cond_0
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne p2, v0, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1172
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_2
    return-void
.end method

.method private printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1108
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {p3, v0}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, " xmlns"

    .line 1115
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, ""

    .line 1116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    .line 1117
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const-string v0, "=\""

    .line 1120
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, v1}, Lorg/jdom/output/XMLOutputter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\""

    .line 1122
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p3, p2}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->push(Lorg/jdom/Namespace;)V

    return-void
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1579
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 1580
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1581
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 1582
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1583
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1570
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 1571
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1572
    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    .line 840
    invoke-static {p2}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 842
    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_1

    .line 843
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 845
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private printTextRange(Ljava/io/Writer;Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-direct {p0, p2, p3}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result p3

    .line 1043
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_9

    .line 1046
    invoke-direct {p0, p2, p4}, Lorg/jdom/output/XMLOutputter;->skipTrailingWhite(Ljava/util/List;I)I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p4, :cond_9

    .line 1049
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1053
    instance-of v2, v1, Lorg/jdom/Text;

    if-eqz v2, :cond_0

    .line 1054
    move-object v2, v1

    nop

    nop

    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1056
    :cond_0
    instance-of v2, v1, Lorg/jdom/EntityRef;

    if-eqz v2, :cond_8

    .line 1057
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v3, v1

    nop

    nop

    invoke-virtual {v3}, Lorg/jdom/EntityRef;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_7

    const-string v3, ""

    .line 1065
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_4

    .line 1072
    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v3, v3, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v4, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v3, v3, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v4, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v3, v4, :cond_4

    .line 1074
    :cond_2
    invoke-direct {p0, v0}, Lorg/jdom/output/XMLOutputter;->endsWithWhite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lorg/jdom/output/XMLOutputter;->startsWithWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, " "

    .line 1076
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1082
    :cond_4
    instance-of v0, v1, Lorg/jdom/CDATA;

    if-eqz v0, :cond_5

    .line 1083
    nop

    nop

    invoke-virtual {p0, p1, v1}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    goto :goto_2

    .line 1085
    :cond_5
    instance-of v0, v1, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_6

    .line 1086
    nop

    nop

    invoke-virtual {p0, p1, v1}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    goto :goto_2

    .line 1089
    :cond_6
    invoke-direct {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printString(Ljava/io/Writer;Ljava/lang/String;)V

    :goto_2
    move-object v0, v2

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1060
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should see only CDATA, Text, or EntityRef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method private skipLeadingWhite(Ljava/util/List;I)I
    .locals 3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 1229
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1230
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_3

    :cond_1
    :goto_0
    if-ge p2, v0, :cond_3

    .line 1234
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private skipTrailingWhite(Ljava/util/List;I)I
    .locals 2

    .line 1248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    .line 1254
    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    if-ltz p2, :cond_3

    add-int/lit8 v0, p2, -0x1

    .line 1258
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p2
.end method

.method private startsWithWhite(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1496
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1503
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1345
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 1348
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 1349
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    const/16 v6, 0x26

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_2

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_1

    .line 1378
    invoke-interface {v0, v5}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1379
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "&#x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    const-string v6, "&gt;"

    goto :goto_1

    :cond_2
    const-string v6, "&lt;"

    goto :goto_1

    :cond_3
    const-string v6, "&amp;"

    goto :goto_1

    :cond_4
    const-string v6, "&quot;"

    goto :goto_1

    :cond_5
    const-string v6, "&#xD;"

    goto :goto_1

    :cond_6
    const-string v6, "&#xA;"

    goto :goto_1

    :cond_7
    const-string v6, "&#x9;"

    :goto_1
    if-nez v4, :cond_8

    if-eqz v6, :cond_a

    .line 1390
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1393
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    if-nez v6, :cond_9

    .line 1399
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1402
    :cond_9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v4, :cond_c

    goto :goto_3

    .line 1410
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1424
    iget-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    if-nez v0, :cond_0

    return-object p1

    .line 1429
    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 1432
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 1433
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_4

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_2

    .line 1451
    invoke-interface {v0, v5}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1452
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "&#x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v2

    goto :goto_1

    :cond_2
    const-string v6, "&gt;"

    goto :goto_1

    :cond_3
    const-string v6, "&lt;"

    goto :goto_1

    :cond_4
    const-string v6, "&amp;"

    goto :goto_1

    :cond_5
    const-string v6, "&#xD;"

    goto :goto_1

    .line 1448
    :cond_6
    iget-object v6, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v6, v6, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    :goto_1
    if-nez v4, :cond_7

    if-eqz v6, :cond_9

    .line 1463
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1466
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1467
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    if-nez v6, :cond_8

    .line 1472
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1475
    :cond_8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    if-nez v4, :cond_b

    goto :goto_3

    .line 1483
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public getFormat()Lorg/jdom/output/Format;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {v0}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    return-object v0
.end method

.method public output(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 258
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 463
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 269
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    .line 474
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 292
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    .line 497
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 214
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    .line 414
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 203
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lorg/jdom/output/XMLOutputter;->printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 372
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 374
    instance-of v5, v4, Lorg/jdom/Element;

    if-eqz v5, :cond_0

    .line 375
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v4

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v2, v5}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_1

    .line 378
    :cond_0
    instance-of v5, v4, Lorg/jdom/Comment;

    if-eqz v5, :cond_1

    .line 379
    nop

    nop

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    goto :goto_1

    .line 381
    :cond_1
    instance-of v5, v4, Lorg/jdom/ProcessingInstruction;

    if-eqz v5, :cond_2

    .line 382
    nop

    nop

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    goto :goto_1

    .line 384
    :cond_2
    instance-of v4, v4, Lorg/jdom/DocType;

    if-eqz v4, :cond_3

    .line 385
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    .line 388
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 396
    invoke-direct {p0, p2, v2}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_4
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object p1, p1, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 429
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 315
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    .line 526
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 304
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v0, v0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 511
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    .line 512
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    .line 513
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    invoke-virtual {p1, v0}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    .line 515
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printText(Ljava/io/Writer;Lorg/jdom/Text;)V

    .line 486
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    .line 445
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 447
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 584
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 586
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/CDATA;)Ljava/lang/String;
    .locals 1

    .line 599
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 601
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Comment;)Ljava/lang/String;
    .locals 1

    .line 630
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 632
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/DocType;)Ljava/lang/String;
    .locals 1

    .line 555
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 557
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Document;)Ljava/lang/String;
    .locals 1

    .line 540
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 542
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Element;)Ljava/lang/String;
    .locals 1

    .line 570
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 572
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/EntityRef;)Ljava/lang/String;
    .locals 1

    .line 660
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 662
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/ProcessingInstruction;)Ljava/lang/String;
    .locals 1

    .line 645
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 647
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Text;)Ljava/lang/String;
    .locals 1

    .line 614
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 616
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1141
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1142
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    .line 1143
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    .line 1144
    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v1, v2, :cond_0

    .line 1146
    invoke-direct {p0, p1, v1, p4}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_0
    const-string v1, " "

    .line 1149
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V

    const-string v1, "="

    .line 1151
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\""

    .line 1153
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/output/XMLOutputter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jdom/CDATA;->getTextNormalize()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "<![CDATA["

    .line 815
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "]]>"

    .line 817
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<!--"

    .line 744
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "-->"

    .line 746
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean p2, p2, Lorg/jdom/output/Format;->omitDeclaration:Z

    if-nez p2, :cond_1

    const-string p2, "<?xml version=\"1.0\""

    .line 684
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean p2, p2, Lorg/jdom/output/Format;->omitEncoding:Z

    if-nez p2, :cond_0

    .line 686
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, " encoding=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const-string p2, "?>"

    .line 688
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 693
    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object p2, p2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    invoke-virtual {p2}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {p2}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<!DOCTYPE "

    .line 711
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\""

    if-eqz v0, :cond_0

    const-string v4, " PUBLIC \""

    .line 714
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v0, " SYSTEM"

    .line 721
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const-string v0, " \""

    .line 723
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, ""

    .line 727
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " ["

    .line 728
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "]"

    .line 731
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    const-string p2, ">"

    .line 733
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    invoke-virtual {p2}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 863
    invoke-virtual {p2}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 868
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    const-string v2, "space"

    invoke-virtual {p2, v2, v1}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 872
    :goto_0
    iget-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const-string v2, "default"

    .line 874
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    goto :goto_1

    :cond_1
    const-string v2, "preserve"

    .line 877
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    sget-object v1, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    iput-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    :cond_2
    :goto_1
    const-string v1, "<"

    .line 883
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 884
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 887
    invoke-virtual {p4}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->size()I

    move-result v9

    .line 890
    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 893
    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    if-eqz v0, :cond_3

    .line 897
    invoke-virtual {p0, p1, v0, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_3
    const/4 v0, 0x0

    .line 904
    invoke-direct {p0, v3, v0}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v4

    .line 905
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-string v0, ">"

    if-lt v4, v5, :cond_5

    .line 908
    iget-object p3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean p3, p3, Lorg/jdom/output/Format;->expandEmptyElements:Z

    if-eqz p3, :cond_4

    const-string p3, "></"

    .line 909
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 910
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 911
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p2, " />"

    .line 914
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 918
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 924
    invoke-static {v3, v4}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v1

    if-ge v1, v5, :cond_6

    .line 926
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    add-int/lit8 v6, p3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p4

    .line 927
    invoke-direct/range {v1 .. v7}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 929
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 930
    invoke-direct {p0, p1, p3}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    goto :goto_2

    .line 934
    :cond_6
    invoke-direct {p0, p1, v3, v4, v5}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    :goto_2
    const-string p3, "</"

    .line 936
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 938
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 942
    :goto_3
    invoke-virtual {p4}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->size()I

    move-result p1

    if-le p1, v9, :cond_7

    .line 943
    invoke-virtual {p4}, Lorg/jdom/output/XMLOutputter$NamespaceStack;->pop()Ljava/lang/String;

    goto :goto_3

    .line 947
    :cond_7
    iput-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method protected printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "&"

    .line 799
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, ";"

    .line 801
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v1, v1, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "javax.xml.transform.disable-output-escaping"

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    iput-boolean v2, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    goto :goto_0

    :cond_0
    const-string v1, "javax.xml.transform.enable-output-escaping"

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    iput-boolean v3, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 771
    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    .line 774
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "?>"

    const-string v3, "<?"

    if-nez v1, :cond_2

    .line 775
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, " "

    .line 777
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected printText(Ljava/io/Writer;Lorg/jdom/Text;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jdom/Text;->getTextNormalize()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p2

    .line 831
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setFormat(Lorg/jdom/output/Format;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 177
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1514
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1515
    :goto_0
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "]"

    if-ge v1, v2, :cond_3

    .line 1516
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    .line 1524
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v2, "\\r"

    .line 1518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v2, "\\n"

    .line 1520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v2, "\\t"

    .line 1522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1529
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XMLOutputter[omitDeclaration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v2, v2, Lorg/jdom/output/Format;->omitDeclaration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "encoding = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "omitEncoding = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v4, v4, Lorg/jdom/output/Format;->omitEncoding:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "indent = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "expandEmptyElements = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v4, v4, Lorg/jdom/output/Format;->expandEmptyElements:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "lineSeparator = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\', "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "textMode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
