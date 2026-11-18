.class public Lorg/jdom/input/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXHandler.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.73 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field private static final attrNameToTypeMap:Ljava/util/Map;


# instance fields
.field private atRoot:Z

.field private currentElement:Lorg/jdom/Element;

.field private declaredNamespaces:Ljava/util/List;

.field private document:Lorg/jdom/Document;

.field private entityDepth:I

.field private expand:Z

.field private externalEntities:Ljava/util/Map;

.field private factory:Lorg/jdom/JDOMFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private internalSubset:Ljava/lang/StringBuffer;

.field private locator:Lorg/xml/sax/Locator;

.field private previousCDATA:Z

.field private suppress:Z

.field private textBuffer:Lorg/jdom/input/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    .line 161
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "CDATA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "IDREF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "IDREFS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENTITY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENTITIES"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NMTOKEN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NMTOKENS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "NOTATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ENUMERATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 3

    .line 200
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 101
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 104
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 107
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    .line 114
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 117
    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 124
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    .line 127
    new-instance v2, Lorg/jdom/input/TextBuffer;

    invoke-direct {v2}, Lorg/jdom/input/TextBuffer;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    .line 136
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    .line 139
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {p1}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    .line 207
    :goto_0
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    .line 211
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-void
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x22

    if-eqz p1, :cond_0

    .line 931
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 937
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " SYSTEM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 940
    :cond_1
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 942
    :goto_0
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method private static getAttributeType(Ljava/lang/String;)I
    .locals 2

    .line 975
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 977
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    return v0

    .line 988
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private transferNamespaces(Lorg/jdom/Element;)V
    .locals 3

    .line 599
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 600
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 602
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 603
    invoke-virtual {p1, v1}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x22

    if-eqz p4, :cond_1

    .line 385
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 387
    :cond_1
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p4, :cond_2

    const-string p2, "#FIXED"

    .line 391
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 392
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p3, " \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :cond_2
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 620
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_1

    .line 624
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 627
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/TextBuffer;->append([CII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 862
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    .line 864
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 866
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 867
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez p1, :cond_1

    .line 868
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, "  <!--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "-->\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 873
    :cond_1
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez p1, :cond_3

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 874
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz p1, :cond_2

    .line 875
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {p1, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object p2

    iget-object p3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 408
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 842
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 844
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    const/4 v0, 0x0

    .line 845
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 763
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 714
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz p1, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 718
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez p1, :cond_2

    .line 719
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getParent()Lorg/jdom/Parent;

    move-result-object p1

    .line 720
    instance-of p2, p1, Lorg/jdom/Document;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 721
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 724
    :cond_1
    check-cast p1, Lorg/jdom/Element;

    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    :goto_0
    return-void

    .line 728
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Ill-formed XML document (missing opening tag for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 816
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 817
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    :cond_0
    const-string v0, "[dtd]"

    .line 822
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 823
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 654
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->isAllWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    .line 662
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->clear()V

    return-void
.end method

.method protected flushCharacters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    return-void

    .line 689
    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 696
    :goto_0
    iget-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    return-void
.end method

.method public getCurrentElement()Lorg/jdom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    if-eqz v0, :cond_0

    return-object v0

    .line 956
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 642
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 428
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :goto_0
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 892
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 459
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    :goto_0
    return-void
.end method

.method protected pushElement(Lorg/jdom/Element;)V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 229
    :goto_0
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "%"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 483
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 833
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 835
    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 749
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    const/4 p1, 0x1

    .line 750
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 751
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 333
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 522
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ":"

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 526
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 530
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 531
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 532
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 534
    :goto_0
    invoke-static {p3, p1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    .line 536
    iget-object p3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p3, p2, p1}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    goto :goto_1

    .line 538
    :cond_2
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1, p2}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    .line 543
    :goto_1
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 544
    invoke-direct {p0, p1}, Lorg/jdom/input/SAXHandler;->transferNamespaces(Lorg/jdom/Element;)V

    .line 548
    :cond_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_8

    .line 551
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jdom/input/SAXHandler;->getAttributeType(Ljava/lang/String;)I

    move-result v5

    const-string v6, "xmlns:"

    .line 559
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 565
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 566
    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6, v5}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;

    move-result-object v3

    goto :goto_3

    .line 567
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 568
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v4

    .line 572
    iget-object v6, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7, v5, v4}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v3

    goto :goto_3

    .line 575
    :cond_6
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6, v5}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;

    move-result-object v3

    .line 578
    :goto_3
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, p1, v3}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    :cond_7
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 581
    :cond_8
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 583
    iget-boolean p2, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz p2, :cond_9

    .line 584
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {p2, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 585
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_5

    .line 587
    :cond_9
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 589
    :goto_5
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 767
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 769
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "[dtd]"

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 776
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    return-void

    .line 781
    :cond_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v0, :cond_4

    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 788
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v0, :cond_4

    .line 791
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    nop

    nop

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 793
    aget-object v3, v0, v2

    .line 794
    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 803
    :goto_0
    iget-boolean v2, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v2, :cond_3

    .line 804
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 805
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, v3, v0}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object p1

    .line 808
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 810
    :cond_3
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    .line 499
    iget-object p2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 912
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, " NDATA "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    iget-object p1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
