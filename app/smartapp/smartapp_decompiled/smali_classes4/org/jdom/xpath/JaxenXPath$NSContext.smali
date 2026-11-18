.class Lorg/jdom/xpath/JaxenXPath$NSContext;
.super Lorg/jaxen/SimpleNamespaceContext;
.source "JaxenXPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/xpath/JaxenXPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NSContext"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/jdom/xpath/JaxenXPath;


# direct methods
.method public constructor <init>(Lorg/jdom/xpath/JaxenXPath;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    .line 309
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-super {p0, p1}, Lorg/jaxen/SimpleNamespaceContext;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 329
    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    invoke-static {v2}, Lorg/jdom/xpath/JaxenXPath;->access$000(Lorg/jdom/xpath/JaxenXPath;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 334
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_1

    .line 335
    move-object v0, v2

    check-cast v0, Lorg/jdom/Element;

    goto :goto_0

    .line 336
    :cond_1
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_2

    .line 337
    check-cast v2, Lorg/jdom/Attribute;

    invoke-virtual {v2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_2
    instance-of v3, v2, Lorg/jdom/Content;

    if-eqz v3, :cond_3

    .line 339
    check-cast v2, Lorg/jdom/Content;

    invoke-virtual {v2}, Lorg/jdom/Content;->getParentElement()Lorg/jdom/Element;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_3
    instance-of v3, v2, Lorg/jdom/Document;

    if-eqz v3, :cond_4

    .line 341
    check-cast v2, Lorg/jdom/Document;

    invoke-virtual {v2}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 345
    invoke-virtual {v0, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 347
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method
