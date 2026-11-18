.class public Lorg/jdom/filter/ElementFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "ElementFilter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ElementFilter.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# instance fields
.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/jdom/Namespace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Namespace;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 186
    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 167
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Lorg/jdom/filter/ElementFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 143
    :cond_1
    check-cast p1, Lorg/jdom/filter/ElementFilter;

    .line 145
    iget-object v1, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 146
    :cond_3
    iget-object v1, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1, p1}, Lorg/jdom/Namespace;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz p1, :cond_5

    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    .line 155
    iget-object v2, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/jdom/Namespace;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3

    .line 122
    instance-of v0, p1, Lorg/jdom/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 123
    check-cast p1, Lorg/jdom/Element;

    .line 124
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/jdom/filter/ElementFilter;->namespace:Lorg/jdom/Namespace;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom/Namespace;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
