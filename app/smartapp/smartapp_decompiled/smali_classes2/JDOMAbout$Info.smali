.class LJDOMAbout$Info;
.super Ljava/lang/Object;
.source "JDOMAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJDOMAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# static fields
.field private static final INFO_FILENAME:Ljava/lang/String; = "META-INF/jdom-info.xml"


# instance fields
.field final authors:Ljava/util/List;

.field final copyright:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final license:Ljava/lang/String;

.field final support:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field final version:Ljava/lang/String;

.field final website:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJDOMAbout$Info;->authors:Ljava/util/List;

    .line 202
    invoke-direct {p0}, LJDOMAbout$Info;->getInfoFileStream()Ljava/io/InputStream;

    move-result-object v0

    .line 204
    new-instance v1, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v1}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 207
    invoke-virtual {v1, v0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    const-string v1, "title"

    .line 210
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->title:Ljava/lang/String;

    const-string v1, "version"

    .line 211
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->version:Ljava/lang/String;

    const-string v1, "copyright"

    .line 212
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->copyright:Ljava/lang/String;

    const-string v1, "description"

    .line 213
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->description:Ljava/lang/String;

    const-string v1, "license"

    .line 214
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->license:Ljava/lang/String;

    const-string v1, "support"

    .line 215
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->support:Ljava/lang/String;

    const-string v1, "web-site"

    .line 216
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LJDOMAbout$Info;->website:Ljava/lang/String;

    const-string v1, "author"

    .line 218
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 222
    new-instance v2, LJDOMAbout$Author;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "e-mail"

    invoke-virtual {v1, v4}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, LJDOMAbout$Author;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, LJDOMAbout$Info;->authors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getInfoFileStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "META-INF/jdom-info.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "META-INF/jdom-info.xml not found; it should be within the JDOM JAR but wasn\'t found on the classpath"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
